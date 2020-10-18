using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Threading.Tasks;

namespace Fale_Conosco.ViewModel
{
    public class SMTPVM
    {
        public int Id { get; set; }

        [Required(ErrorMessage ="O campo {0} é obrigatório!")]
        [Display(Name ="Destinatário")]
        public string Destinatario { get; set; }

        [Required(ErrorMessage = "O campo {0} é obrigatório!")]
        public string Assunto { get; set; }

        [Required(ErrorMessage = "O campo {0} é obrigatório!")]
        public string Mensagem { get; set; }
    }
}
