using Capa.Entities;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Serialization;
using System.ServiceModel;
using System.ServiceModel.Web;
using System.Text;

namespace WSCesfam
{
    // NOTE: You can use the "Rename" command on the "Refactor" menu to change the interface name "IService1" in both code and config file together.
    [ServiceContract]
    public interface IServicio
    {
        /*Region Metodos del Usuario*/
        [OperationContract]
        bool ValidarUsuario(string usu, string pas);

        [OperationContract]
        bool CreateUser(decimal cod, string userName, string Pass, decimal type);

        [OperationContract]
        string UpdateUSer(decimal cod, string userName, string Pass, decimal type);

        [OperationContract]
        Usuario ReadUser(decimal cod);

        [OperationContract]
        bool DeleteUser(decimal id);

        /*Region Metodos del Funcionario*/

        [OperationContract]
        bool CrearFuncionario(decimal cod, string nombre, string paterno, string materno, string direccion, decimal telefono);

        [OperationContract]
        bool DeleteFuncionario(decimal id);

        /*Region metodos del medicamento*/
        [OperationContract]
        bool CrearMedicamento(decimal id, string nombre, string nomGenerico, string fec_vencimiento, string laboratorio);
        
    }

    
}
