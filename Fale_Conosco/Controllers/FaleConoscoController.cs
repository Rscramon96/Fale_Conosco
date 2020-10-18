using System;
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

        // GET: FaleConosco
        public async Task<IActionResult> Index()
        {
            List<FaleConoscoVM> lista = new List<FaleConoscoVM>();
            var faleconoscoM = await _context.FaleConosco.Where(x => !x.Excluir).ToListAsync();

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
            //return View(await _context.FaleConosco.Where(x => !x.Excluir).ToListAsync());
        }

        // GET: FaleConosco/Details/5
        public async Task<IActionResult> Details(FaleConoscoVM DadosVM)
        {
            if (DadosVM.Id == null)
            {
                return NotFound();
            }
            else
            {
                var faleConosco = await _context.FaleConosco.FirstOrDefaultAsync(m => m.Id == DadosVM.Id);

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
        }

        // GET: FaleConosco/Create
        [AllowAnonymous]
        public IActionResult Create()
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
        public async Task<IActionResult> Create([Bind("Id,DataCadastro,Excluir,Nome,DataNascimento,CPF,Email,Celular,Sexo,CEP,Rua,Numero,Complemento,Bairro,Cidade,Estado,Assunto,Mensagem")] FaleConoscoVM faleConosco)
        {
            if (ModelState.IsValid)
            {
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

                if (ModelState.IsValid && faleconoscoM.Excluir == false)
                {
                    _context.Add(faleconoscoM);
                    await _context.SaveChangesAsync();

                    MailMessage email = new MailMessage();
                    email.To.Add(faleconoscoM.Email);
                    email.Subject = "[FALE-CONOSCO]: " + faleconoscoM.Assunto;
                    email.Body = "Olá " + faleconoscoM.Nome + ", você acaba de nos enviar um formulário de fale conosco. Aqui está a mensagem que você nos deixou! \n"
                        + faleconoscoM.Mensagem;
                    email.From = new MailAddress("faleconosco1996@gamil.com");
                    email.IsBodyHtml = false;

                    SmtpClient smtpClient = new SmtpClient("smtp.gmail.com");
                    smtpClient.Port = 587;
                    smtpClient.UseDefaultCredentials = true;
                    smtpClient.EnableSsl = true;
                    smtpClient.Credentials = new System.Net.NetworkCredential("faleconosco1996@gmail.com", "Teste@123");
                    smtpClient.Send(email);

                    ViewBag.cadastro = "Cadastro realizado com sucesso! \n Confira seu e-mail!";

                    return RedirectToAction("Create", "FaleConosco");
                }
            }
            return View(faleConosco);
        }

        // GET: FaleConosco/Delete/5
        public async Task<IActionResult> Delete(FaleConoscoVM DadosVM)
        {
            if (DadosVM.Id == null)
            {
                return NotFound();
            }
            else
            {
                var faleConosco = await _context.FaleConosco.FirstOrDefaultAsync(m => m.Id == DadosVM.Id);

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
        }

        // POST: FaleConosco/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> DeleteConfirmed(FaleConoscoVM DadosVM)
        {
            var faleConosco = await _context.FaleConosco.FindAsync(DadosVM.Id);

            if (faleConosco.Excluir == false)
            {
                faleConosco.Excluir = true;
                _context.FaleConosco.Update(faleConosco);
                await _context.SaveChangesAsync();

                ViewBag.excluir = faleConosco.Assunto+" excluído com sucesso!";

                return RedirectToAction("Index", "FaleConosco");
            }
            else
            {
                return NotFound();
            }
        }

        //GET: FaleConosco/Email
        public async Task<IActionResult> Email(FaleConoscoVM DadosVM)
        {
            if (DadosVM.Id != null)
            {
                var email = await _context.FaleConosco.FindAsync(DadosVM.Id);

                if (email != null)
                {
                    var emailVM = new SMTPVM();
                    emailVM.Id = email.Id;
                    emailVM.Destinatario = email.Email;
                    emailVM.Assunto = email.Assunto;
                    //emailVM.Mensagem = "";
                    return View(emailVM);
                }
                else
                {
                    return NotFound();
                }
            }
            else
            {
                return NotFound();
            }
        }

        //POST: FaleConosco/Email   
        [HttpPost]
        public IActionResult Email(SMTPVM DadosVM)
        {
            if (ModelState.IsValid)
            {
                var dados = new SMTP();
                dados.Destinatario = DadosVM.Destinatario;
                dados.Assunto = DadosVM.Assunto;
                dados.Mensagem = DadosVM.Mensagem;

                MailMessage email = new MailMessage();
                email.To.Add(dados.Destinatario);
                email.Subject = "[RESPOSTA]: " + dados.Assunto;
                email.Body = dados.Mensagem;
                email.From = new MailAddress("faleconosco1996@gamil.com");
                email.IsBodyHtml = false;

                SmtpClient smtpClient = new SmtpClient("smtp.gmail.com");
                smtpClient.Port = 587;
                smtpClient.UseDefaultCredentials = true;
                smtpClient.EnableSsl = true;
                smtpClient.Credentials = new System.Net.NetworkCredential("faleconosco1996@gmail.com", "Teste@123");
                smtpClient.Send(email);

                _context.SMTP.Add(dados);
                _context.SaveChangesAsync();

                ViewBag.email = "Resposta para, " + email.To + ", enviada com sucesso!";

                return RedirectToAction("Index", "FaleConosco");
            }
            else
            {
                return NotFound();
            }
        }
        private bool FaleConoscoExists(int id)
        {
            return _context.FaleConosco.Any(e => e.Id == id);
        }
    }
}
