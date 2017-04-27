using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Serialization;
using System.ServiceModel;
using System.ServiceModel.Web;
using System.Text;
using Capa.Entities;
using Capa.Negocio;

namespace WSCesfam
{
    // NOTE: You can use the "Rename" command on the "Refactor" menu to change the class name "Service1" in code, svc and config file together.
    // NOTE: In order to launch WCF Test Client for testing this service, please select Service1.svc or Service1.svc.cs at the Solution Explorer and start debugging.
    public class Servicio : IServicio
    {
        UsuarioDAO dao = new UsuarioDAO();

        /*Metodo Crear Funcionario*/
        public bool CrearFuncionario(decimal cod, string nombre, string paterno, string materno, string direccion, decimal telefono)
        {
            try
            {
                Funcionario f = new Funcionario();
                f.Cod_Funcionario = cod;
                f.Nombre_Funcionario = nombre;
                f.Ap_Paterno = paterno;
                f.Ap_Materno = materno;
                f.Direccion = direccion;
                f.Telefono = telefono;

                f.Create();

                return true;
            }
            catch (Exception ex)
            {
                return false;
            }
        }

        public bool CrearMedicamento(decimal id, string nombre, string nomGenerico, string fec_vencimiento, string laboratorio)
        {
            try
            {
                Medicamento m = new Medicamento()
                {
                    Cod_Medicamento = id,
                    Nombre_Medicamento = nombre,
                    Nombre_Generico = nomGenerico,
                    Fec_Vencimiento = fec_vencimiento,
                    Laboratorio = laboratorio
                };

                m.Create();
                return true;

            }
            catch (Exception ex)
            {
                return false;
            }

        }

        /*Metodo Crear Ususario*/
        public bool CreateUser(decimal cod, string userName, string Pass, decimal type)
        {
            try
            {
                Usuario u = new Usuario();
                u.Cod_User = cod;
                u.User_Name = userName;
                u.Pass = Pass;
                u.Tipo_User = type;

                dao.Create(u);

                return true;
            }
            catch (Exception ex)
            {
                return false;
            }

        }

        /*Metodo que elimina el funcionario*/
        public bool DeleteFuncionario(decimal id)
        {
            try
            {
                Funcionario f = new Funcionario();

                f.Delete(id);

                return true;
            }
            catch (Exception ex)
            {
                return false;
            }
        }

        /*Metodo para eliminar */
        public bool DeleteUser(decimal id)
        {
            try
            {
                dao.Delete(id);

                return true;
            }
            catch (Exception ex)
            {
                return false;
            }


        }



        public Usuario ReadUser(decimal cod)
        {
            throw new NotImplementedException();
        }

        public string UpdateUSer(decimal cod, string userName, string Pass, decimal type)
        {
            throw new NotImplementedException();
        }
        /*Validador de Usuario funcionando*/
        public bool ValidarUsuario(string usu, string pas)
        {
            var valido = dao.ValidarUsusario(usu, pas);

            if (valido == true)
            {
                return true;
            }
            else
            {
                return false;
            }
        }
    }
}
