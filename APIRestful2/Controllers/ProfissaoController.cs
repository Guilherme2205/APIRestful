using APIRestful2.Models;
using System;
using System.Collections.Generic;
using System.Data;
using System.Web.Http;

namespace APIRestful2.Controllers
{
    public class ProfissaoController : ApiController
    {
        // GET: api/Profissao
        public IEnumerable<DataTable> Get()
        {
            var conexao = new Connection();
            yield return conexao.ExecutarConsulta(CommandType.StoredProcedure, "p_ListarProfissoes");
        }

        // GET: api/Profissao/5
        public IEnumerable<DataTable> Get(int id)
        {
            var conexao = new Connection();
            conexao.AdicionarParametros("@Id", id);
            yield return conexao.ExecutarConsulta(CommandType.StoredProcedure, "p_SelectProfissao");
        }

        // POST: api/Profissao
        public string Post([FromBody]Profissao value)
        {
            var conexao = new Connection();
            conexao.AdicionarParametros("@Nome", value.Nome);
            conexao.AdicionarParametros("@DataCad", DateTime.Now);
            conexao.ExecutarManipulacao(CommandType.StoredProcedure, "p_InsertProfissao");
            return value.Nome;
        }

        // PUT: api/Profissao/5
        public string Put(int id, [FromBody]Profissao value)
        {
            var conexao = new Connection();
            conexao.AdicionarParametros("@Id", id);
            conexao.AdicionarParametros("@Novo", value.Nome);
            conexao.ExecutarManipulacao(CommandType.StoredProcedure, "p_UpdateProfissao");
            return value.Nome;
        }

        // DELETE: api/Profissao/5
        public void Delete(int id)
        {
            var conexao = new Connection();
            conexao.AdicionarParametros("@Id", id);
            conexao.ExecutarManipulacao(CommandType.StoredProcedure, "p_DeleteProfissao");
        }
    }
}
