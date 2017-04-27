using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Oracle.ManagedDataAccess.Client;

using Capa.Entities;
using Capa.DALC;
namespace Capa.Negocio
{
    public class UsuarioDAO 
    {
        private Conexion c;
       
        public UsuarioDAO()
        {
            c = new Conexion();
           
        }
        
        private void Init()
        {

        }
        /*Vlidar incompleto*/
        public bool ValidarUsusario(string user, string pass)
        {
            try
            {
                //Usuario u = new Usuario();
                c.Con.Open();
                string valid = "select * from usuarios where nombre_usuario='" + user + "'and contrasena='" + pass + "'";
                c.cmd = new OracleCommand(valid, c.Con);
                c.da = new OracleDataAdapter(c.cmd);
                c.Con.Close();

                return true;

            }
            catch (Exception ex)
            {
                return false;
            }
            
        }

        /*CRUD*/
        /*Create*/

        public void Create(Usuario u)
        {

            string insert = "insert into usuarios values('" + u.Cod_User + "', '" + u.User_Name + "', '" + u.Pass + "', '" + u.Tipo_User + "')";

            Ejecutar(insert);


        }

        /*Read*/
        public Usuario Read(decimal id)
        {

            Usuario u = null;
                string select = "select * from usuarios where cod_usuario = '" + id + "'";
                c.Con.Open();
                c.cmd = new OracleCommand(select, c.Con);

                c.dr = c.cmd.ExecuteReader();
                if (c.dr.Read())
                {                    
                    u.Cod_User = decimal.Parse(c.dr[0].ToString());
                    u.User_Name = c.dr[1].ToString();
                    u.Pass = c.dr[2].ToString();
                    u.Tipo_User = decimal.Parse(c.dr[3].ToString());
                }
                c.Con.Close();
            return u;
        }

        /*Update*/
        public void Update(Usuario u)
        {
            
                string update = "update usuarios set nombre_usuario = '" + u.User_Name + "', contrasena = '" + u.Pass + "',tipo_usuario='" +u.Tipo_User + "' where cod_usuario = '" + u.Cod_User + "'";

                Ejecutar(update);
                
           
        }


        /*Delete*/
        public bool  Delete(decimal id)
        {
            
            try
            {
                string delete = "delete from usuarios where cod_usuario='" + id + "'";

                Ejecutar(delete);
                return true;
            }
            catch (Exception ex)
            {
                return false;
            }
                
        }

        /// <summary>
        /// Metodo que ejecuta el Inser, Update, Delete de CRUD
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
