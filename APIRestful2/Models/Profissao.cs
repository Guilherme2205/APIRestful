using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace APIRestful2.Models
{
    public class Profissao
    {
        public Profissao()
        {
        }

        public int Id { get; set; }
        public string Nome { get; set; }
        public DateTime DataCadastro { get; set; }
        public DateTime DataAlteracao { get; set; }
    }
}