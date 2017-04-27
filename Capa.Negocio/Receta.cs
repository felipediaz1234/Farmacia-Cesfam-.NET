using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

using Capa.DALC;
using Oracle.ManagedDataAccess.Client;

namespace Capa.Negocio
{
    public class Receta
    {
        public int Cod_Receta { get; set; }
        public int Cod_Medico { get; set; }
        public int Cod_Paciente { get; set; }
        public int Cod_Medicamento { get; set; }
        public DateTime Fec_Receta { get; set; }
        public int Cant_Pastillas { get; set; }
        public string Descripcion { get; set; }
        public int Cod_Consulta { get; set; }

        public Medico m;
        public Paciente p;
        public Medicamento med;
        public ConsultaMedica cm;
        

        private Conexion c;

        public Receta()
        {
            c = new Conexion();
        }

        public void Create()
        {
            string sql = "insert into recetas values('" + Cod_Receta + "','" + Cod_Medico + "','" + Cod_Paciente + "','" + Cod_Medicamento +
            "','" + Fec_Receta + "','" + Cant_Pastillas + "','" + Descripcion + "','" + Cod_Consulta + "',)";

            Ejecutar(sql);
        }

        public Receta Read(int id)
        {
            Receta r = null;
            string select = "select m.nombre_medico, p.nom_paciente, med.nombre_medicamento,r.fecha_receta,r.CANTIDAD_PASTILLAS,r.descripcion,c.MOTIVO_CONSULTA,c.DIAGNOSTICO" +
"from recetas r join medicos m on (m.COD_MEDICO = r.COD_MEDICO) join paciente p on (r.COD_PACIENTE = p.COD_PACIENTE)"+
" join MEDICAMENTO med on (med.COD_MEDICAMENTO = r.COD_MEDICAMENTO)"+
"join CONSULTA_MEDICA c on (c.COD_CONSULTA = r.CONSULTA_MEDICA_COD_CONSULTA) where cod_receta='"+id+"'";
            c.Con.Open();
            c.cmd = new OracleCommand(select, c.Con);

            c.dr = c.cmd.ExecuteReader();
            if (c.dr.Read())
            {

                m.Nombre_Medico = c.dr[0].ToString();
                p.Nombre_Paciente = c.dr[1].ToString();
                med.Nombre_Medicamento = c.dr[2].ToString();
                Cod_Medicamento = int.Parse(c.dr[3].ToString());
                Fec_Receta = DateTime.Parse(c.dr[4].ToString());
                Cant_Pastillas = int.Parse(c.dr[5].ToString());
                Descripcion = c.dr[6].ToString();
                cm.Motivo_Consulta = c.dr[7].ToString();
                cm.Diagnostico = c.dr[8].ToString();
               
            }
            c.Con.Close();
            return r;
        }

        public void Update(int id)
        {
            string sql = "update recetas set cod_medico='"+Cod_Medico+"',cod_paciente='"+Cod_Paciente+"', cod_medico='"+Cod_Medico+
            "',fecha_receta='"+Fec_Receta+"',cantidad_pastillas='"+Cant_Pastillas+"',descripcion='"+Descripcion+
            "' where cod_receta='"+Cod_Receta+"'";

            Ejecutar(sql);
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
