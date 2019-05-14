using System;

namespace APIRestful2.Models
{
    public class Dependentes
    {
        public Dependentes()
        {
        }

        public int Id { get; set; }
        public string Nome { get; set; }
        public int IdFuncionario { get; set; }
        public DateTime DataCadastro { get; set; }
        public DateTime DataAlteracao { get; set; }
        public string Cpf { get; set; }
        public DateTime DataNascimento { get; set; }
        public int IdParentesco { get; set; }
    }
}