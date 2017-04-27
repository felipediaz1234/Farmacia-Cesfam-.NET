using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Oracle.ManagedDataAccess.Client;

using Capa.DALC;
namespace Capa.Negocio
{
    public class Medico 
    {
        public decimal Cod_Medico { get; set; }
        public string Nombre_Medico { get; set; }
        public string Ap_Paterno { get; set; }
        public string Ap_Materno { get; set; }
        public string Especialidad { get; set; }
        public decimal Telefono { get; set; }
        public string Direccion { get; set; }
        

        private Conexion c;
        public Medico()
        {
            c = new Conexion();
            this.Init();
        }

        private void Init()
        {
            Nombre_Medico = string.Empty;
            Ap_Paterno = string.Empty;
            Ap_Materno = string.Empty;
            Especialidad = string.Empty;
            Telefono = 0;
            Direccion = string.Empty;
            
        }

        public bool Create()
        {
            try
            {
                string insert = "insert into medicos values('" + Cod_Medico + "','" + Nombre_Medico + "','" + Ap_Paterno
                + "','" + Ap_Materno + "','" + Especialidad + "','" + Telefono + "','" + Direccion + "')";

                Ejecutar(insert);
                return true;
            }
            catch (Exception ex)
            {
                return false;
            }
        }

        public bool Read()
        {

            try
            {
                string select = "select * from medicos where cod_medico = '" + Cod_Medico + "'";
                c.Con.Open();
                c.cmd = new OracleCommand(select, c.Con);

                c.dr = c.cmd.ExecuteReader();
                if (c.dr.Read())
                {

                    Cod_Medico = decimal.Parse(c.dr[0].ToString());
                    Nombre_Medico = c.dr[1].ToString();
                    Ap_Paterno = c.dr[2].ToString();
                    Ap_Materno = c.dr[3].ToString();
                    Especialidad = c.dr[4].ToString();
                    Telefono = decimal.Parse(c.dr[5].ToString());
                    Direccion = c.dr[6].ToString();
                    
                }
                c.Con.Close();
                return true;
            }
            catch (Exception ex)
            {
                return false;
            }
        }

        public bool Update()
        {
            try
            {
                string update = "update medicos set nombre_medico = '" + Nombre_Medico + "', app_medico = '" + Ap_Paterno
                   + "', apm_medico='" + Ap_Materno + "', especialidad = '" + Especialidad + "', telefono = '" + Telefono
                   + "', direccion = '" + Direccion + "' where cod_medico = '" + Cod_Medico + "'";

                Ejecutar(update);
                return true;
            }
            catch (Exception ex)
            {
                return false;
            }
        }

        public bool Delete()
        {
            try
            {
                string delete = "delete from medicos where cod_medico = '" + Cod_Medico + "'";

                Ejecutar(delete);
                return true;
            }
            catch (Exception ex)
            {
                return false;
            }
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
