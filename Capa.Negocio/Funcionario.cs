using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Oracle.ManagedDataAccess.Client;

using Capa.DALC;
namespace Capa.Negocio
{
    public class Funcionario 
    {

        public decimal Cod_Funcionario { get; set; }
        public string Nombre_Funcionario { get; set; }
        public string Ap_Paterno { get; set; }
        public string Ap_Materno { get; set; }
        public string Direccion { get; set; }
        public decimal Telefono { get; set; }

        private Conexion c;
        private string xml;

        public Funcionario()
        {
            c = new Conexion();
            this.Init();
        }

        public Funcionario(string xml)
        {
            Funcionario f = CommonBC.Deserializar<Funcionario>(xml);
            Cod_Funcionario = f.Cod_Funcionario;
            Nombre_Funcionario = f.Nombre_Funcionario;
            Ap_Paterno = f.Ap_Paterno;
            Ap_Materno = f.Ap_Materno;
            Direccion = f.Direccion;
            Telefono = f.Telefono;
        }

        public string Serializar()
        {
            return CommonBC.Serializar<Funcionario>(this);
        }

        private void Init()
        {
            Nombre_Funcionario = string.Empty;
            Ap_Paterno = string.Empty;
            Ap_Materno = string.Empty;
            Direccion = string.Empty;
            Telefono = 0;
        }

        /*CRUD*/
        /*Create*/

        public void Create()
        {
            string insert = "insert into funcionarios values('" + Cod_Funcionario + "','" + Nombre_Funcionario
                        + "','" + Ap_Paterno + "','" + Ap_Materno + "','" + Direccion + "','" + Telefono + "')";

            Ejecutar(insert);
        }

        /*Read*/
        public Funcionario Read(decimal id)
        {
            Funcionario f = null;
            string select = "select * from funcionarios where cod_funcionario = '" + id + "'";
            c.Con.Open();
            c.cmd = new OracleCommand(select, c.Con);

            c.dr = c.cmd.ExecuteReader();
            if (c.dr.Read())
            {

                Cod_Funcionario = decimal.Parse(c.dr[0].ToString());
                Nombre_Funcionario = c.dr[1].ToString();
                Ap_Paterno = c.dr[2].ToString();
                Ap_Materno = c.dr[3].ToString();
                Direccion = c.dr[4].ToString();
                Telefono = decimal.Parse(c.dr[5].ToString());
            }
            c.Con.Close();
            return f;
        }

        /*Update*/
        public void Update(Funcionario f)
        {

            string update = "update funcionarios set nombre_funcionario = '" + Nombre_Funcionario + "', app_funcionario = '" + Ap_Paterno + "', apm_funcionario = '"
               + Ap_Materno + "', direccion_funcionario = '" + Direccion + "', telefono = '" + Telefono + "'" +
               "where cod_funcionario = '" + Cod_Funcionario + "'";

            Ejecutar(update);

        }


        /*Delete*/
        public bool Delete(decimal id)
        {
            try
            {
                string delete = "delete from funcionarios where cod_funcionario = '" + id + "'";

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
