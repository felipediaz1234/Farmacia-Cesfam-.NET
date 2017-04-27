using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using Capa.Negocio;
namespace WebPortafolio
{
    public partial class FormMedicamento : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void txtBuscar_Click(object sender, EventArgs e)
        {
            try
            {
                Medicamento m = new Medicamento()
                {
                    Cod_Medicamento = decimal.Parse(txtCod.Text)
                };

                txtNomMedicamento.Text = m.Nombre_Medicamento;
                txtNomGenerico.Text = m.Nombre_Generico;
                txtFechaVenci.Text = m.Fec_Vencimiento.ToString();
                txtLaboratorio.Text = m.Laboratorio;

                lblMessage.Text = "Medicamento Leido";

            }
            catch (Exception es)
            {
                lblMessage.Text = "Medicamento no encontrado";
            }
        }
    }
}