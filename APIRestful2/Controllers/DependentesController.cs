using APIRestful2.Models;
using System;
using System.Collections.Generic;
using System.Data;
using System.Web.Http;

namespace APIRestful2.Controllers
{
    [Route("api/{controller}")]
    public class DependentesController : ApiController
    {
        // GET: api/Dependentes
        [HttpGet]
        public IEnumerable<DataTable> Get()
        {
            var conexao = new Connection();
                yield return conexao.ExecutarConsulta(CommandType.StoredProcedure, "p_ListarDependentes");
        }

        // GET: api/Dependentes/5
        //[HttpGet("{id}")]
        public IEnumerable<DataTable> Get(int id)
        {
            var conexao = new Connection();
            conexao.AdicionarParametros("@Id", id);
            yield return conexao.ExecutarConsulta(CommandType.StoredProcedure, "p_SelectDependente");
        }

        // POST: api/Dependentes
        [HttpPost]
        public string Post([FromBody]Dependentes value)
        {
            try
            {
                var conexao = new Connection();
                conexao.AdicionarParametros("@nome", value.Nome);
                conexao.AdicionarParametros("@IdFuncionario", value.IdFuncionario);
                conexao.AdicionarParametros("@DataCadastro", DateTime.Now);
                conexao.AdicionarParametros("@DataAlteracao", DateTime.Now);
                conexao.AdicionarParametros("@Cpf", value.Cpf);
                conexao.AdicionarParametros("@DataNascimento", value.DataNascimento);
                conexao.AdicionarParametros("@IdParentesco", value.IdParentesco);
                conexao.ExecutarManipulacao(CommandType.StoredProcedure, "p_InsertDependentes");
                return value.Nome;
            }
            catch (Exception e)
            {
                return "Excecao de post: " + e.ToString();
            }
        }

        // PUT: api/Dependentes/5
        //[HttpPut("{id}")]
        public string Put(int id, [FromBody]Dependentes value)
        {
            try
            {
                var conexao = new Connection();
                conexao.AdicionarParametros("@Id", id);
                conexao.AdicionarParametros("@Nome", value.Nome);
                conexao.AdicionarParametros("@IdFuncionario", value.IdFuncionario);
                conexao.AdicionarParametros("@DataCadastro", value.DataCadastro);
                conexao.AdicionarParametros("@DataAlteracao", DateTime.Now);
                conexao.AdicionarParametros("@Cpf", value.Cpf);
                conexao.AdicionarParametros("@DataNascimento", value.DataNascimento);
                conexao.AdicionarParametros("@IdParentesco", value.IdParentesco);
                conexao.ExecutarManipulacao(CommandType.StoredProcedure, "p_UpdateDependente");
                return value.Nome;
            }
            catch (Exception e)
            {
                return "Excecao de put: " + e.ToString();
            }
        }

        // DELETE: api/Dependentes/5
        //[HttpDelete("{id}")]
        public string Delete(int id)
        {
            try
            {
                var conexao = new Connection();
                conexao.AdicionarParametros("@Id", id);
                conexao.ExecutarManipulacao(CommandType.StoredProcedure, "p_DeleteDependente");
                return ("Dependente " + id + "deletado!");
            }
            catch (Exception e)
            {
                return "Excecao de delete: " + e.ToString();
            }
        }
    }
}
