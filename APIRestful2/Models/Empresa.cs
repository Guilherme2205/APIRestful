using System;

namespace APIRestful2.Models
{
    public class Empresa
    {
        public Empresa()
        {
        }

        public int Id { get; set; }
        public string RazaoSocial { get; set; }
        public DateTime DataCadastro { get; set; }
        public DateTime DataAlteracao { get; set; }
        public string Cnpj { get; set; }
    }
}