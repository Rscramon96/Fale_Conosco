﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.Rendering;
using Microsoft.EntityFrameworkCore;
using Fale_Conosco.Data;
using Fale_Conosco.Models;
using Microsoft.AspNetCore.Authorization;
using Fale_Conosco.Enums;
using Fale_Conosco.ViewModel;
using System.ComponentModel;
using System.Net.Mail;

namespace Fale_Conosco.Controllers
{
    [Authorize]
    public class FaleConoscoController : Controller
    {
        private readonly ContextoFC _context;

        public FaleConoscoController(ContextoFC context)
        {
            _context = context;
        }

        public IActionResult Lista()
        {
            List<FaleConoscoVM> lista = new List<FaleConoscoVM>();
            var faleconoscoM = _context.FaleConosco.Where(x => !x.Excluir).ToList();

            foreach (var item in faleconoscoM)
            {
                FaleConoscoVM faleConoscoVM = new FaleConoscoVM();
                faleConoscoVM.Id = item.Id;
                faleConoscoVM.Nome = item.Nome;
                faleConoscoVM.Celular = item.Celular;
                faleConoscoVM.Email = item.Email;
                faleConoscoVM.DataCadastro = item.DataCadastro;
                faleConoscoVM.Assunto = item.Assunto;
                lista.Add(faleConoscoVM);
            }
            return View(lista);
        }

        public IActionResult Detalhes(int Id)
        {
            var faleConosco = _context.FaleConosco.Find(Id);

            if (faleConosco == null)
            {
                return NotFound();
            }
            else
            {
                var faleconoscoVM = new FaleConoscoVM();

                faleconoscoVM.Id = faleConosco.Id;
                faleconoscoVM.DataCadastro = faleConosco.DataCadastro;
                faleconoscoVM.Excluir = faleConosco.Excluir;
                faleconoscoVM.Nome = faleConosco.Nome;
                faleconoscoVM.DataNascimento = faleConosco.DataNascimento;
                faleconoscoVM.CPF = faleConosco.CPF;
                faleconoscoVM.Email = faleConosco.Email;
                faleconoscoVM.Celular = faleConosco.Celular;
                faleconoscoVM.Sexo = faleConosco.Sexo;
                faleconoscoVM.CEP = faleConosco.CEP;
                faleconoscoVM.Rua = faleConosco.Rua;
                faleconoscoVM.Numero = faleConosco.Numero;
                faleconoscoVM.Complemento = faleConosco.Complemento;
                faleconoscoVM.Bairro = faleConosco.Bairro;
                faleconoscoVM.Cidade = faleConosco.Cidade;
                faleconoscoVM.Estado = faleConosco.Estado;
                faleconoscoVM.Assunto = faleConosco.Assunto;
                faleconoscoVM.Mensagem = faleConosco.Mensagem;
                return View(faleconoscoVM);
            }
        }

        [AllowAnonymous]
        public IActionResult Cadastro()
        {
            var Estados = from Estado x in Enum.GetValues(typeof(Estado)) select new { Id = x, Nome = x.ToString() };
            ViewBag.Estado = new SelectList(Estados, "Id", "Nome");

            var Sexo = from Sexo x in Enum.GetValues(typeof(Sexo)) select new { Id = x, Nome = x.ToString() };
            ViewBag.Sexo = new SelectList(Sexo, "Id", "Nome");

            return View();
        }

        [AllowAnonymous]
        [HttpPost]
        [ValidateAntiForgeryToken]
        public IActionResult Cadastro(FaleConoscoVM faleConosco)
        {
            try
            {
                if (!ModelState.IsValid)
                {
                    throw new Exception();
                }

                faleConosco.DataCadastro = DateTime.Now;

                var faleconoscoM = new FaleConosco();

                faleconoscoM.Id = faleConosco.Id;
                faleconoscoM.DataCadastro = faleConosco.DataCadastro;
                faleconoscoM.Excluir = faleConosco.Excluir;
                faleconoscoM.Nome = faleConosco.Nome;
                faleconoscoM.DataNascimento = faleConosco.DataNascimento;
                faleconoscoM.CPF = faleConosco.CPF;
                faleconoscoM.Email = faleConosco.Email;
                faleconoscoM.Celular = faleConosco.Celular;
                faleconoscoM.Sexo = faleConosco.Sexo;
                faleconoscoM.CEP = faleConosco.CEP;
                faleconoscoM.Rua = faleConosco.Rua;
                faleconoscoM.Numero = faleConosco.Numero;
                faleconoscoM.Complemento = faleConosco.Complemento;
                faleconoscoM.Bairro = faleConosco.Bairro;
                faleconoscoM.Cidade = faleConosco.Cidade;
                faleconoscoM.Estado = faleConosco.Estado;
                faleconoscoM.Assunto = faleConosco.Assunto;
                faleconoscoM.Mensagem = faleConosco.Mensagem;

                _context.Add(faleconoscoM);
                _context.SaveChanges();

                MailMessage email = new MailMessage();
                email.To.Add(faleconoscoM.Email);
                email.Subject = "[FALE-CONOSCO]: " + faleconoscoM.Assunto;
                email.Body = "Olá " + faleconoscoM.Nome + ", você acaba de nos enviar um formulário de fale conosco. Aqui está a mensagem que você nos deixou! \n\n"
                   + "" + faleconoscoM.Mensagem + "'";
                email.From = new MailAddress("faleconosco1996@gmail.com");
                email.IsBodyHtml = false;

                SmtpClient smtpClient = new SmtpClient("smtp.gmail.com");
                smtpClient.Port = 587;
                smtpClient.UseDefaultCredentials = true;
                smtpClient.EnableSsl = true;
                smtpClient.Credentials = new System.Net.NetworkCredential("faleconosco1996@gmail.com", "Teste@123");
                smtpClient.Send(email);

                return Ok();
            }
            catch (Exception e)
            {
                var Estados = from Estado x in Enum.GetValues(typeof(Estado)) select new { Id = x, Nome = x.ToString() };
                ViewBag.Estado = new SelectList(Estados, "Id", "Nome");

                var Sexo = from Sexo x in Enum.GetValues(typeof(Sexo)) select new { Id = x, Nome = x.ToString() };
                ViewBag.Sexo = new SelectList(Sexo, "Id", "Nome");

                return BadRequest(ModelState);
            }
        }

        public IActionResult Excluir(int Id)
        {
            var faleConosco = _context.FaleConosco.Find(Id);

            if (faleConosco == null)
            {
                return NotFound();
            }
            else
            {
                var faleconoscoVM = new FaleConoscoVM();

                faleconoscoVM.Id = faleConosco.Id;
                faleconoscoVM.DataCadastro = faleConosco.DataCadastro;
                faleconoscoVM.Excluir = faleConosco.Excluir;
                faleconoscoVM.Nome = faleConosco.Nome;
                faleconoscoVM.DataNascimento = faleConosco.DataNascimento;
                faleconoscoVM.CPF = faleConosco.CPF;
                faleconoscoVM.Email = faleConosco.Email;
                faleconoscoVM.Celular = faleConosco.Celular;
                faleconoscoVM.Sexo = faleConosco.Sexo;
                faleconoscoVM.CEP = faleConosco.CEP;
                faleconoscoVM.Rua = faleConosco.Rua;
                faleconoscoVM.Numero = faleConosco.Numero;
                faleconoscoVM.Complemento = faleConosco.Complemento;
                faleconoscoVM.Bairro = faleConosco.Bairro;
                faleconoscoVM.Cidade = faleConosco.Cidade;
                faleconoscoVM.Estado = faleConosco.Estado;
                faleconoscoVM.Assunto = faleConosco.Assunto;
                faleconoscoVM.Mensagem = faleConosco.Mensagem;

                return View(faleconoscoVM);
            }
        }

        [HttpPost]
        [ValidateAntiForgeryToken]
        public IActionResult Excluir(FaleConoscoVM DadosVM)
        {
            var faleConosco = _context.FaleConosco.Find(DadosVM.Id);

            try
            {
                faleConosco.Excluir = true;
                _context.FaleConosco.Update(faleConosco);
                _context.SaveChanges();

                return Ok();
            }
            catch (Exception e)
            {
                return BadRequest();
            }
        }

        public IActionResult Email(int Id)
        {
            var email = _context.FaleConosco.Find(Id);

            if (email != null)
            {
                var emailVM = new SMTPVM();
                emailVM.Id = email.Id;
                emailVM.Destinatario = email.Email;
                emailVM.Assunto = email.Assunto;
                emailVM.Mensagem = "";
                return View(emailVM);
            }
            else
            {
                return NotFound();
            }
        }

        [HttpPost]
        [ValidateAntiForgeryToken]
        public IActionResult Email(SMTPVM DadosVM)
        {
            if (ModelState.IsValid)
            {
                var cliente = _context.FaleConosco.Find(DadosVM.Id);

                var dados = new SMTP();
                dados.Destinatario = DadosVM.Destinatario;
                dados.Assunto = DadosVM.Assunto;
                dados.Mensagem = DadosVM.Mensagem;

                MailMessage email = new MailMessage();
                email.To.Add(dados.Destinatario);
                email.Subject = "[RESPOSTA]: " + dados.Assunto;
                email.Body = "Olá,\n\n"
                       + "'" + dados.Mensagem + "'"; ;
                email.From = new MailAddress("faleconosco1996@gmail.com");
                email.IsBodyHtml = false;

                SmtpClient smtpClient = new SmtpClient("smtp.gmail.com");
                smtpClient.Port = 587;
                smtpClient.UseDefaultCredentials = true;
                smtpClient.EnableSsl = true;
                smtpClient.Credentials = new System.Net.NetworkCredential("faleconosco1996@gmail.com", "Teste@123");
                smtpClient.Send(email);

                _context.SMTP.Add(dados);
                _context.SaveChanges();

                return Ok();
            }
            else
            {
                return View(DadosVM);
            }
        }
    }
}
