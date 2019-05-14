﻿using APIRestful2.Models;
using System;
using System.Collections.Generic;
using System.Data;
using System.Web.Http;

namespace APIRestful2.Controllers
{
    public class EmpresaController : ApiController
    {
        // GET: api/Empresa
        public IEnumerable<DataTable> Get()
        {
            var conexao = new Connection();
            yield return conexao.ExecutarConsulta(CommandType.StoredProcedure, "p_ListarEmpresas");
        }

        // GET: api/Empresa/5
        public IEnumerable<DataTable> Get(int id)
        {
            var conexao = new Connection();
            conexao.AdicionarParametros("@Id", id);
            yield return conexao.ExecutarConsulta(CommandType.StoredProcedure, "p_SelectEmpresas");
        }

        // POST: api/Empresa
        public string Post([FromBody]Empresa value)
        {
            var conexao = new Connection();
            conexao.AdicionarParametros("@RazaoSocial", value.RazaoSocial);
            conexao.AdicionarParametros("@DataCadastro", DateTime.Now);
            conexao.AdicionarParametros("@DataAlteracao", value.DataAlteracao);
            conexao.AdicionarParametros("@Cnpj", value.Cnpj);
            conexao.ExecutarManipulacao(CommandType.StoredProcedure, "p_InsertEmpresas");
            return value.RazaoSocial;
        }

        // PUT: api/Empresa/5
        public string Put(int id, [FromBody]Empresa value)
        {
            var conexao = new Connection();
            conexao.AdicionarParametros("@Id", id);
            conexao.AdicionarParametros("@Novo", value.RazaoSocial);
            conexao.ExecutarManipulacao(CommandType.StoredProcedure, "p_UpdateEmpresa");
            return value.RazaoSocial;
        }

        // DELETE: api/Empresa/5
        public void Delete(int id)
        {
            var conexao = new Connection();
            conexao.AdicionarParametros("@Id", id);
            conexao.ExecutarManipulacao(CommandType.StoredProcedure, "p_DeleteEmpresa");
        }
    }
}