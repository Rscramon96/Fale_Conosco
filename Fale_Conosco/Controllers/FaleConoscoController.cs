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
                    return View("Create","FaleConosco");
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
            }
            return RedirectToAction("Create", "FaleConosco");
        }

        public async Task<IActionResult> Resposta(FaleConoscoVM DadosVM)
        {
            return View();
        }
        private bool FaleConoscoExists(int id)
        {
            return _context.FaleConosco.Any(e => e.Id == id);
        }
    }
}
