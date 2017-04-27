using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Oracle.ManagedDataAccess.Client;

using Capa.DALC;
namespace Capa.Negocio
{
    public class Paciente 
    {
        public decimal Cod_Paciente { get; set; }
        public string Nombre_Paciente { get; set; }
        public string Ap_Paterno { get; set; }
        public string Ap_Materno { get; set; }
        public DateTime Fec_Nacimiento { get; set; }
        public string Genero { get; set; }
        public string  Sector { get; set; }
        public decimal Telefono { get; set; }
        public string  Direccion { get; set; }

        private Conexion c;
        public Paciente()
        {
            c = new Conexion();
            this.Init();
        }

        private void Init()
        {
            Nombre_Paciente = string.Empty;
            Ap_Paterno = string.Empty;
            Ap_Materno = string.Empty;
            Fec_Nacimiento = DateTime.Now;
            Genero = string.Empty;
            Sector = string.Empty;
            Telefono = 0;
            Direccion = string.Empty;

        }

        public bool Create()
        {
            try
            {
                string insert = "insert into paciente values('" + Cod_Paciente + "','" + Nombre_Paciente + "','" +
                Ap_Paterno + "','" + Ap_Materno + "','" + Fec_Nacimiento + "','" + Genero + "','" + Sector + "','" +
                Telefono + "','" + Direccion + "')";

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
                string select = "select * from paciente where cod_paciente = '" + Cod_Paciente + "'";
                c.Con.Open();
                c.cmd = new OracleCommand(select, c.Con);

                c.dr = c.cmd.ExecuteReader();
                if (c.dr.Read())
                {

                    Cod_Paciente = decimal.Parse(c.dr[0].ToString());
                    Nombre_Paciente = c.dr[1].ToString();
                    Ap_Paterno = c.dr[2].ToString();
                    Ap_Materno = c.dr[3].ToString();
                    Fec_Nacimiento = DateTime.Parse(c.dr[4].ToString());
                    Genero = c.dr[5].ToString();
                    Sector = c.dr[6].ToString();
                    Telefono = decimal.Parse(c.dr[7].ToString());
                    Direccion = c.dr[8].ToString();

                }
                c.Con.Close();
                return true;
            }
            catch
            {
                return false;
            }
            }

        public bool Update()
        {
            try
            {
                string update = "update paciente set nom_paciente = '" + Nombre_Paciente + "', app_paciente = '" + Ap_Paterno
                    + "', apm_paciente = '" + Ap_Materno + "', fecha_nacimiento ='" + Fec_Nacimiento + "', sexo = '" + Genero
                    + "', sector = '" + Sector + "', telefono = '" + Telefono + "', direccion = '" + Direccion + "' where cod_paciente = '" +
                    Cod_Paciente + "'";

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
                string delete = "delete from paciente where cod_paciente = '" + Cod_Paciente + "'";

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
