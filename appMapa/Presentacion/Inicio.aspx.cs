using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using appMapa.Entidades;
using appMapa.Logica;

namespace appMapa.Presentacion
{
    public partial class Inicio : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            clEmpresaL objEmpresas = new clEmpresaL();
            gvEmpresas.DataSource = objEmpresas.mtdListar();
            gvEmpresas.DataBind();

            txtContador.Text = objEmpresas.mtdContador().ToString();
            int con = objEmpresas.mtdContador();

            for (int i = 0; i < con; i++)
            {
                var latitud = gvEmpresas.Rows[i].Cells[5].Text;
                var longitud = gvEmpresas.Rows[i].Cells[6].Text;

                txtLatitud.Value = latitud;
                txtLongitud.Value = longitud;
            }


        }

    }

}