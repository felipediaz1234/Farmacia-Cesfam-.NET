using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Oracle.ManagedDataAccess.Client;
using System.Data;

namespace Capa.DALC
{
    public class Conexion
    {
        public OracleConnection Con;
        public OracleCommand cmd;
        public OracleDataReader dr;
        public OracleDataAdapter da;
        public DataTable dt;

        public Conexion()
        {
            Con = new OracleConnection("Data Source=localhost:1521/xe; User Id=cesfam1; Password=cesfam;");
        }
    }
}
