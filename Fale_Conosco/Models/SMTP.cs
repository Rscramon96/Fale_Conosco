using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace Fale_Conosco.Models
{
    public class SMTP
    {
        public int Id { get; set; }
        public string Destinatario { get; set; }
        public string Assunto { get; set; }
        public string Mensagem { get; set; }
    }
}
