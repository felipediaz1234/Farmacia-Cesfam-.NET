using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Oracle.ManagedDataAccess.Client;

using Capa.DALC;
namespace Capa.Negocio
{
    public class Medicamento
    {
        public decimal Cod_Medicamento { get; set; }
        public string Nombre_Medicamento { get; set; }
        public string Nombre_Generico { get; set; }
        public DateTime Fec_Vencimiento { get; set; }
        public string Laboratorio { get; set; }

        private Conexion c;
        public Medicamento()
        {
            c = new Conexion();
            this.Init();
        }

        private void Init()
        {
            Nombre_Medicamento = string.Empty;
            Nombre_Generico = string.Empty;
            Fec_Vencimiento = DateTime.Now;
            Laboratorio = string.Empty;
        }

        public bool Create()
        {
            try
            {
                string insert = "insert into medicamento values('" + Cod_Medicamento + "','" + Nombre_Medicamento + "','" +
                          Nombre_Generico + "','" + Fec_Vencimiento + "','" + Laboratorio + "')";

                Ejecutar(insert);
                return true;
            }
            catch (Exception ex)
            {
                return false;
            }


        }

        public Medicamento Read(int id)
        {
            Medicamento m = null;

                string select = "select * from medicamento where cod_medicamento = '" + id + "'";
                c.Con.Open();
                c.cmd = new OracleCommand(select, c.Con);

                c.dr = c.cmd.ExecuteReader();
                if (c.dr.Read())
                {

                    Cod_Medicamento = decimal.Parse(c.dr[0].ToString());
                    Nombre_Medicamento = c.dr[1].ToString();
                    Nombre_Generico = c.dr[2].ToString();
                    Fec_Vencimiento = DateTime.Parse(c.dr[3].ToString());
                    Laboratorio = c.dr[4].ToString();

                }
                c.Con.Close();
            return m;
        }

        public bool Update()
        {
            try
            {
                string update = "update medicamento set nombre_medicamento = '" + Nombre_Medicamento + "', nombre_generico = '" +
                    Nombre_Generico + "', fecha_vencimiento = '" + Fec_Vencimiento + "', laboratorio = '" + Laboratorio
                    + "' where cod_medicamento = '" + Cod_Medicamento + "'";

                Ejecutar(update);
                return true;
            }
            catch (Exception ex)
            {
                return false;
            }
        }

        /*Medicamento no requiere eliminacion*/
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
