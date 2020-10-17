using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Threading.Tasks;

namespace Fale_Conosco.ViewModel
{
    public class LoginVM
    {
        [Required(ErrorMessage = "O campo {0} é obrigatório!")]
        [EmailAddress(ErrorMessage = "O campo {0} está em formato inválido!")]
        [Display(Name = "E-MAIL")]
        public string Email { get; set; }

        [Required(ErrorMessage = "O campo {0} é obrigatório!")]
        [DataType(DataType.Password)]
        [Display(Name = "SENHA")]
        public string Senha { get; set; }

        [Display(Name = "Lembrar usuário?")]
        public bool LembrarMe { get; set; }
    }
}
