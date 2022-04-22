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
    public partial class Registro : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // Cargar combo de Tipo de Empresas
            clTipoEmpresaL objTipoEmpresa = new clTipoEmpresaL();

            if (!Page.IsPostBack)
            {
                ddlEmpresa.DataSource = objTipoEmpresa.mtdListar();
                ddlEmpresa.DataValueField = "idTipoEmpresa";
                ddlEmpresa.DataTextField = "nombreTipo";
                ddlEmpresa.DataBind();

            }

        }

        protected void btnRegistro_Click(object sender, EventArgs e)
        {
            clEmpresaE objDatos = new clEmpresaE();
            objDatos.nombreEmpresa = txtNombre.Text;
            objDatos.direccion = txtDireccion.Text;
            objDatos.descripcion = txtDescripcion.Text;
            objDatos.url = txtUrl.Text;
            objDatos.latitud = txtLatitud.Text;
            objDatos.longitud = txtLongitud.Text;

            objDatos.idTipoEmpresa = int.Parse(ddlEmpresa.SelectedValue.ToString());

            clEmpresaL objEmpresa = new clEmpresaL();
            int resultado = objEmpresa.mtdRegistrar(objDatos);

            if (resultado != 0)
            {
                lblMensaje.Text = "La empresa se segistro correctamente";

                txtNombre.Text = "";
                txtDireccion.Text = "";
                txtDescripcion.Text = "";
                txtUrl.Text = "";

            }

        }

    }

}