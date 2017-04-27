using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Oracle.ManagedDataAccess.Client;

using Capa.DALC;

namespace Capa.Entities
{
    public class Usuario
    {
        /// <summary>
        /// Propiedad Codigo Usuario
        /// </summary>
        private decimal _cod_User;
        public decimal Cod_User
        {
            get { return _cod_User; }
            set { _cod_User = value; }
        }

        private string  _user_Name;

        public string  User_Name
        {
            get { return _user_Name; }
            set { _user_Name = value; }
        }

        private string _pass;

        public string Pass
        {
            get { return _pass; }
            set { _pass = value; }
        }

        private decimal _tipo_User;

        public decimal Tipo_User
        {
            get { return _tipo_User; }
            set { _tipo_User = value; }
        }





        /// <summary>
        /// Propiedad Nombre Usuario 
        /// </summary>

        /*
        public Usuario(string xml)
        {
            Usuario us = CommonBC.Deserializar<Usuario>(xml);
            Cod_user = us.Cod_user;
            User_Name = us.User_Name;
            Pass = us.Pass;
            Tipo_User = us.Tipo_User;
        }
        
        public string Serializar()
        {
            Usuario us = CommonBC.Serializar<Usuario>(this);
        }
        */
    }
}
