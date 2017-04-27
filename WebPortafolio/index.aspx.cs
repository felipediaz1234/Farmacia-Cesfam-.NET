using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using Capa.Negocio;
using System.Web.Security;

namespace WebPortafolio
{
    public partial class index : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnLogIng_Click(object sender, EventArgs e)
        {
            UsuarioDAO u = new UsuarioDAO();

            bool valido = u.ValidarUsusario(txtUserName.Text, txtPassword.Text);

            if (valido)
            {
                FormsAuthentication.RedirectFromLoginPage("", false);
            }
            else
            {
                //lblMessage.ForeColor = System.Drawing.Color.Red;
                lblMensaje.Text = "Error al ingresar Usuario y/o Contraseña";
            }


            /*
            ServiceReference1.ServiciosClient misServicios = new ServiceReference1.ServiciosClient();

            if (misServicios.ValidarUsuario(TxtNombre.Text, TxtClave.Text))
            {
            Session["user"] = TxtNombre.Text;
            Response.Redirect("verificar.aspx");
            }
            else
            {
            lblMens.Text = "Nombre de usuario o password no corresponden";
            }
            */


        }
    }
}