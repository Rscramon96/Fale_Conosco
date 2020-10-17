using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Identity;

namespace Fale_Conosco.Models
{
    public class LoginUsuario : IdentityUser
    {
        public string Nome { get; set; }
        public bool Liberado { get; set; }
        public DateTime DataCadastro { get; set; }
    }
}
