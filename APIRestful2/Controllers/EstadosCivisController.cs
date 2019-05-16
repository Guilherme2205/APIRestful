using System.Collections.Generic;
using System.Data;
using System.Web.Http;

namespace APIRestful2.Controllers
{
    public class EstadosCivisController : ApiController
    {        
        // GET: api/EstadoCivil
        public IEnumerable<DataTable> Get()
        {
            var conexao = new Connection();
            yield return conexao.ExecutarConsulta(CommandType.StoredProcedure, "p_ListarEstadoCivil");
        }

        // GET: api/EstadoCivil/5
        public IEnumerable<DataTable> Get(int id)
        {
            var conexao = new Connection();
            conexao.AdicionarParametros("@Id", id);
            yield return conexao.ExecutarConsulta(CommandType.StoredProcedure, "p_SelectEs");
        }

        // POST: api/EstadoCivil
        public void Post([FromBody]string value)
        {
        }

        // PUT: api/EstadoCivil/5
        public void Put(int id, [FromBody]string value)
        {
        }

        // DELETE: api/EstadoCivil/5
        public void Delete(int id)
        {
        }
    }
}
