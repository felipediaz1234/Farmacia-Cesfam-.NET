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
                service.CrearMedicamento(decimal.Parse(txtCod.Text), txtNomMedicamento.Text, txtNomGenerico.Text, txtFechaVenci.Text,txtLaboratorio.Text);
                service.Close();
                lblMessage.Text = "Creado";

            }
            catch (Exception ex)
            {
                lblMessage.Text = "No Creado";
            }
        }

        protected void btnBuscar_Click(object sender, EventArgs e)
        {
            try
            {
                Medicamento m = new Medicamento();

                m.Read(decimal.Parse(txtCod.Text));
                

                txtNomMedicamento.Text = m.Nombre_Medicamento;
                txtNomGenerico.Text = m.Nombre_Generico;
                txtFechaVenci.Text = m.Fec_Vencimiento.ToString();
                txtLaboratorio.Text = m.Laboratorio;

                lblMessage.Text = "Leido";

            }
            catch (Exception ex)
            {
                lblMessage.Text = "No Leido";
            }


        }
    }
}