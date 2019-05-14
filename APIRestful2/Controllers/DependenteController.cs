﻿using APIRestful2.Models;
using System;
using System.Collections.Generic;
using System.Data;
using System.Web.Http;

namespace APIRestful2.Controllers
{
    public class DependenteController : ApiController
    {
        // GET: api/Dependentes
        public IEnumerable<DataTable> Get()
        {
            var conexao = new Connection();
            yield return conexao.ExecutarConsulta(CommandType.StoredProcedure, "p_ListarDependentes");
        }

        // GET: api/Dependentes/5
        public IEnumerable<DataTable> Get(int id)
        {
            var conexao = new Connection();
            conexao.AdicionarParametros("@Id", id);
            yield return conexao.ExecutarConsulta(CommandType.StoredProcedure, "p_SelectDependente");
        }

        // POST: api/Dependentes
        public string Post([FromBody]Dependentes value)
        {
            var conexao = new Connection();
            conexao.AdicionarParametros("@nome", value.Nome);
            conexao.AdicionarParametros("@IdFuncionario", value.IdFuncionario);
            conexao.AdicionarParametros("@DataCadastro", DateTime.Now);
            conexao.AdicionarParametros("@DataAlteracao", value.DataAlteracao);
            conexao.AdicionarParametros("@Cpf", value.Cpf);
            conexao.AdicionarParametros("@DataNascimento", value.DataNascimento);
            conexao.AdicionarParametros("@IdParentesco", value.IdParentesco);
            conexao.ExecutarManipulacao(CommandType.StoredProcedure, "p_InsertDependentes");
            return value.Nome;
        }

        // PUT: api/Dependentes/5
        public string Put(int id, [FromBody]Dependentes value)
        {
            var conexao = new Connection();
            conexao.AdicionarParametros("@Id", id);
            conexao.AdicionarParametros("@Nome", value.Nome);
            conexao.ExecutarManipulacao(CommandType.StoredProcedure, "p_UpdateDependente");
            return value.Nome;
        }

        // DELETE: api/Dependentes/5
        public void Delete(int id)
        {
            var conexao = new Connection();
            conexao.AdicionarParametros("@Id", id);
            conexao.ExecutarManipulacao(CommandType.StoredProcedure, "p_DeleteDependente");
        }
    }
}
