using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebPortafolio
{
    public partial class index : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnLogIng_Click(object sender, EventArgs e)
        {
            if (txtUserName.Text == "admin" && txtPassword.Text == "admin")
            {
                Response.Redirect("menu1.aspx");
            }
            else
            {
                lblMensaje.Text = "Datos Incorrecto";
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