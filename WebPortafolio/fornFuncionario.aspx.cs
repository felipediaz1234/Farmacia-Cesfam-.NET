using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using Capa.Negocio;
namespace WebPortafolio
{
    public partial class fornFuncionario : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            /* if (Session["user"] == null)
           {
               Response.Redirect("~/index.aspx");
           }*/
        }

        protected void btnCrear_Click(object sender, EventArgs e)
        {
            try
            {
                ServiceCesfam.ServicioClient service = new ServiceCesfam.ServicioClient();
                service.CrearFuncionario(decimal.Parse(txtCodigo.Text), txtnombre.Text, txtPaterno.Text, txtMaterno.Text, txtdireccion.Text, decimal.Parse(txtTelefono.Text));
                service.Close();

                Label7.Text = "Funcionario Creado";

            }
            catch (Exception ex)
            {
                Label7.Text = "Funcionario no creado";
            }
        }

        protected void btnSearch_Click(object sender, EventArgs e)
        {
            try
            {
                Funcionario f = new Funcionario()
                {
                    Cod_Funcionario = decimal.Parse(txtCodigo.Text)
                };

                txtnombre.Text = f.Nombre_Funcionario;
                txtPaterno.Text = f.Ap_Paterno;
                txtMaterno.Text = f.Ap_Materno;
                txtdireccion.Text = f.Direccion;
                txtTelefono.Text = f.Telefono.ToString();
                Label7.Text = "Funcionario Leido";

            }
            catch (Exception ex)
            {
                Label7.Text = "Funcionario no Leido";
            }
        }
    }
}