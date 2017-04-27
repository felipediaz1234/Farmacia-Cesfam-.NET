using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using Capa.Negocio;
namespace WebPortafolio
{
    public partial class FrmMedicamento : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnCrear_Click(object sender, EventArgs e)
        {
            try
            {
                ServiceCesfam.ServicioClient service = new ServiceCesfam.ServicioClient();
                service.CrearMedicamento(int.Parse(txtCod.Text), txtNomMedicamento.Text, txtNomGenerico.Text, DateTime.Parse(txtFechaVenci.Text), txtLaboratorio.Text);
                service.Close();

                lblMessage.Text = "Creado";

            }
            catch (Exception ex)
            {
                lblMessage.Text = "No Creado";
            }
        }
    }
}