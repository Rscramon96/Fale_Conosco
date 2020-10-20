using Fale_Conosco.Enums;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Threading.Tasks;

namespace Fale_Conosco.ViewModel
{
    public class FaleConoscoVM
    {
        [Required]
        [Display(Name = "Código")]
        public int Id { get; set; }

        [Required]
        [Display(Name ="Data de Cadastro")]
        public DateTime DataCadastro { get; set; }
        public bool Excluir { get; set; }

        [Required(ErrorMessage = "O campo {0} é obrigatório!")]
        [StringLength(100, MinimumLength=5, ErrorMessage = "O {0} deve ter no mínimo 5 e no máximo 100 caracteres.")]
        public string Nome { get; set; }

        [Required(ErrorMessage = "O campo {0} é obrigatório!")]
        [Display(Name = "Data de Nascimento")]
        [StringLength(10, MinimumLength = 10, ErrorMessage ="Formato de data incorreto.")]
        public string DataNascimento { get; set; }

        [Required(ErrorMessage = "O campo {0} é obrigatório!")]
        [StringLength(14, MinimumLength = 14, ErrorMessage ="Insira um CPF válido.")]
        public string CPF { get; set; }

        [Required(ErrorMessage = "O campo {0} é obrigatório!")]
        [Display(Name = "E-Mail")]
        [EmailAddress]
        public string Email { get; set; }

        [Required(ErrorMessage = "O campo {0} é obrigatório!")]
        [StringLength(16, MinimumLength = 16, ErrorMessage ="Formato de número incorreto.")]
        public string Celular { get; set; }

        [Required(ErrorMessage = "O campo {0} é obrigatório!")]
        public Sexo Sexo { get; set; }

        [Required(ErrorMessage = "O campo {0} é obrigatório!")]
        [StringLength(9, MinimumLength = 9, ErrorMessage ="Formato de CEP incorreto.")]
        public string CEP { get; set; }

        [Required(ErrorMessage = "O campo {0} é obrigatório!")]
        public string Rua { get; set; }

        [Required(ErrorMessage = "O campo {0} é obrigatório!")]
        public string Numero { get; set; }
        public string Complemento { get; set; }

        [Required(ErrorMessage = "O campo {0} é obrigatório!")]
        public string Bairro { get; set; }

        [Required(ErrorMessage = "O campo {0} é obrigatório!")]
        public string Cidade { get; set; }

        [Required(ErrorMessage = "O campo {0} é obrigatório!")]
        public Estado Estado { get; set; }

        [Required(ErrorMessage = "O campo {0} é obrigatório!")]
        [StringLength(100, MinimumLength = 5, ErrorMessage ="O assunto deve conter no mínimo 5 e no máximo 100 caracteres.")]
        public string Assunto { get; set; }

        [Required(ErrorMessage = "O campo {0} é obrigatório!")]
        [StringLength(10000, MinimumLength = 10, ErrorMessage ="A mensagem deve conter no mínimo 10 e no máximo 10000 caracteres." )]
        public string Mensagem { get; set; }
    }
}
