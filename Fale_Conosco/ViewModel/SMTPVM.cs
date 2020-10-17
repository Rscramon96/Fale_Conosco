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

        [Required]
        [Display(Name ="Destinatário")]
        public string Destinatario { get; set; }

        [Required]
        public string Assunto { get; set; }

        [Required]
        public string Mensagem { get; set; }
    }
}
