using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Oracle.ManagedDataAccess.Client;

using Capa.DALC;
namespace Capa.Negocio
{
    public class InventarioMedicamento
    {
        public decimal Id_Inventario { get; set; }
        public decimal Cod_Medicamento { get; set; }
        public decimal Cant_Restante { get; set; }

        private Conexion c;
        public InventarioMedicamento()
        {
            c = new Conexion();
            this.Init();
        }

        private void Init()
        {
            Cod_Medicamento = 0;
            Cant_Restante = 0;
        }

        public void Create()
        {
            string insert = "insert into inventario_medicamento values('" + Id_Inventario + "','" +
            Cod_Medicamento + "','" + Cant_Restante + "')";

            Ejecutar(insert);


        }

        public bool Read()
        {
            throw new NotImplementedException();
        }

        public bool Update()
        {
            throw new NotImplementedException();
        }

        public bool Delete()
        {
            throw new NotImplementedException();
        }

        /// <summary>
        /// Metodo que ejecuta Create, Update y Delete
        /// </summary>
        /// <param name="sql"></param>
        private void Ejecutar(string sql)
        {
            c.Con.Open();
            c.cmd = c.Con.CreateCommand();
            c.cmd.CommandText = sql;
            c.cmd.ExecuteNonQuery();
            c.Con.Close();
        }
    }
}
