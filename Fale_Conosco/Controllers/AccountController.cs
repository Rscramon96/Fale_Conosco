using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Identity;
using Microsoft.AspNetCore.Mvc;
using Fale_Conosco.Models;
using Fale_Conosco.ViewModel;
using Microsoft.EntityFrameworkCore;

namespace Fale_Conosco.Controllers
{
    [Authorize]
    public class AccountController : Controller
    {
        private readonly SignInManager<LoginUsuario> _signInManager;
        private readonly UserManager<LoginUsuario> _userManager;

        public AccountController(UserManager<LoginUsuario> userManager, SignInManager<LoginUsuario> signInManager)
        {
            _signInManager = signInManager;
            _userManager = userManager;
        }

        [AllowAnonymous]
        public async Task<IActionResult> Login()
        {
            //var Usuario = new LoginUsuario { UserName = "faleconosco1996@gmail.com", Email = "faleconosco1996@gmail.com", DataCadastro = DateTime.Now, Nome = "Teste" };
            //await _userManager.CreateAsync(Usuario, "Teste@123");

            return View();
        }

        [HttpPost]
        [AllowAnonymous]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> Login(LoginVM viewModel, string returnUrl)
        {
            try
            {
                var user = await _userManager.FindByEmailAsync(viewModel.Email);
                var result = await _signInManager.PasswordSignInAsync(user, viewModel.Senha, viewModel.LembrarMe, false);
                if (!result.Succeeded) throw new Exception();
                {
                    return RedirectToAction("Lista", "FaleConosco");
                }
            }
            catch (Exception e)
            {
                ModelState.AddModelError("", "Tentativa de login inválida.");
                return View(viewModel);
            }
        }

        public async Task<IActionResult> LogOut()
        {
            await _signInManager.SignOutAsync();

            return RedirectToAction("Login");
        }
    }
}

