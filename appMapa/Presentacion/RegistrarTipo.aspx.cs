using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using appMapa.Entidades;
using appMapa.Logica;

namespace appMapa.Presentacion
{
    public partial class RegistrarTipo : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            clTipoEmpresaL objLista = new clTipoEmpresaL();
            gvTipo.DataSource = objLista.mtdListar();

        }

        protected void btnRegistro_Click(object sender, EventArgs e)
        {
            string nombreTipo = txtNombre.Text;

            if (nombreTipo == "" )
            {
                lblMensaje.Text = "Ningun campo puede quedar vacio";
            }
            else
            {
                clTipoEmpresaE objDatos = new clTipoEmpresaE();
                objDatos.nombreTipo = nombreTipo;

                clTipoEmpresaL objTipoEmpresa = new clTipoEmpresaL();
                int resultado = objTipoEmpresa.mtdRegistrar(objDatos);

                if (resultado == 0)
                {
                    lblMensaje.Text=("Error al registrar el Tipo de Empresa");
                }
                else
                {
                    lblMensaje.Text = ("Tipo de Empresa registrardo correctamente");
                    
                }


            }


        }
    }
}