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
                Medicamento m = new Medicamento();
                m.Cod_Medicamento = int.Parse(txtCod.Text);
                m.Nombre_Medicamento = txtNomMedicamento.Text;
                m.Nombre_Generico = txtNomGenerico.Text;
                m.Fec_Vencimiento = DateTime.Parse(txtFechaVenci.Text);
                m.Laboratorio = txtLaboratorio.Text;

                lblMessage.Text = "Creado";

            }
            catch (Exception ex)
            {
                lblMessage.Text = "No Creado";
            }
        }
    }
}