using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

using Capa.DALC;
namespace Capa.Negocio
{
    public class ConsultaMedica
    {
        public decimal Cod_Consulta { get; set; }
        public decimal Cod_Paciente { get; set; }
        public decimal Cod_Medico { get; set; }
        public string Motivo_Consulta { get; set; }
        public string Diagnostico { get; set; }
        public decimal Cod_Receta { get; set; }
        
        private Conexion c;
        public ConsultaMedica()
        {
            c = new Conexion();
            this.Init();
        }

        private void Init()
        {
            Cod_Paciente = 0;
            Cod_Medico = 0;
            Motivo_Consulta = string.Empty;
            Diagnostico = string.Empty;
            Cod_Receta = 0;
        }

        public bool Create()
        {
            try
            {
                string insert = "insert into consulta_medica values('" + Cod_Consulta + "','" + Cod_Paciente + "','" + Cod_Medico
                    + "','" + Motivo_Consulta + "','" + Diagnostico + "','" + Cod_Receta + "')";

                Ejecutar(insert);
                return true;
            }
            catch (Exception ex)
            {
                return false;
            }
        }

        /*consultar el filtro de la busqueda de la consulta medica.*/
        public bool Read()
        {
            throw new NotImplementedException();
        }

        /*consultar quees lo que se debe actualizar*/
        public bool Update()
        {
            throw new NotImplementedException();
        }

        /*Consulta Medica no requiere Eliminacion*/
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
