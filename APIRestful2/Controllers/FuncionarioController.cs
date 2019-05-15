using APIRestful2.Models;
using System;
using System.Collections.Generic;
using System.Data;
using System.Web.Http;

namespace APIRestful2.Controllers
{
    public class FuncionarioController : ApiController
    {
        // GET: api/Funcionario
        public IEnumerable<DataTable> Get()
        {
            var conexao = new Connection();
            yield return conexao.ExecutarConsulta(CommandType.StoredProcedure, "p_ListarFuncionarios");
        }

        // GET: api/Funcionario/5
        public IEnumerable<DataTable> Get(int id)
        {
            var conexao = new Connection();
            conexao.AdicionarParametros("@Id", id);
            yield return conexao.ExecutarConsulta(CommandType.StoredProcedure, "p_SelectFuncionarios");
        }

        // POST: api/Funcionario
        public string Post([FromBody]Funcionario value)
        {
            try
            {
                var conexao = new Connection();
                conexao.AdicionarParametros("@IdEc", value.IdEstadoCivil);
                conexao.AdicionarParametros("@Cpf", value.Cpf);
                conexao.AdicionarParametros("@DataN", value.DataNascimento);
                conexao.AdicionarParametros("@IdPro", value.IdProfissao);
                conexao.AdicionarParametros("@tel", value.DataNascimento);
                conexao.AdicionarParametros("@IdEm", value.IdEmpresa);
                conexao.AdicionarParametros("@DataCad", DateTime.Now);
                conexao.AdicionarParametros("@DataAlt", value.DataAlteracao);
                conexao.AdicionarParametros("@Logr", value.Logradouro);
                conexao.AdicionarParametros("@Bai", value.Bairro);
                conexao.AdicionarParametros("@Cid", value.Cidade);
                conexao.AdicionarParametros("@Es", value.Estado);
                conexao.AdicionarParametros("@Cep", value.Cep);
                conexao.AdicionarParametros("@Nome", value.Nome);
                conexao.ExecutarManipulacao(CommandType.StoredProcedure, "p_InsertFuncionario");
                return value.Nome;
            }
            catch (Exception e)
            {
                return "Excecao de post: " + e.ToString();
            }
        }

        // PUT: api/Funcionario/5
        public string Put(int id, [FromBody]Funcionario value)
        {
            try
            {
                var conexao = new Connection();
                conexao.AdicionarParametros("@Id", id);
                conexao.AdicionarParametros("@Novo", value.Nome);
                conexao.ExecutarManipulacao(CommandType.StoredProcedure, "p_UpdateFuncionario");
                return value.Nome;
            }
            catch (Exception e)
            {
                return "Excecao de put: " + e.ToString();
            }
        }

        // DELETE: api/Funcionario/5
        public string Delete(int id)
        {
            try
            {
                var conexao = new Connection();
                conexao.AdicionarParametros("@Id", id);
                conexao.ExecutarManipulacao(CommandType.StoredProcedure, "p_DeleteFuncionario");
                return ("Funcionario " + id + "deletado!");
            }
            catch (Exception e)
            {
                return "Excecao de delete: " + e.ToString();
            }
        }
    }
}
