using System;

namespace APIRestful2.Models
{
    public class Funcionario
    {
        public Funcionario()
        {
        }

        public int Id { get; set; }
        public string Nome { get; set; }
        public int IdEstadoCivil { get; set; }
        public string Cpf { get; set; }
        public DateTime DataNascimento { get; set; }
        public int IdProfissao { get; set; }
        public string Telefone { get; set; }
        public int IdEmpresa { get; set; }
        public DateTime DataCadastro { get; set; }
        public DateTime DataAlteracao { get; set; }
        public string Logradouro { get; set; }
        public string Bairro { get; set; }
        public string Cidade { get; set; }
        public string Estado { get; set; }
        public string Cep { get; set; }
    }
}