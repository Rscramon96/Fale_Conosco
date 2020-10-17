using Fale_Conosco.Enums;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace Fale_Conosco.Models
{
    public class FaleConosco
    {
        public int Id { get; set; }
        public DateTime DataCadastro { get; set; }
        public bool Excluir { get; set; }
        public string Nome { get; set; }
        public string DataNascimento { get; set; }
        public string CPF { get; set; }
        public string Email { get; set; }
        public string Celular { get; set; }
        public Sexo Sexo { get; set; }
        public string CEP { get; set; }
        public string Rua { get; set; }
        public string Numero { get; set; }
        public string Complemento { get; set; }
        public string Bairro { get; set; }
        public string Cidade { get; set; }
        public Estado Estado { get; set; }
        public string Assunto { get; set; }
        public string Mensagem { get; set; }
    }
}
