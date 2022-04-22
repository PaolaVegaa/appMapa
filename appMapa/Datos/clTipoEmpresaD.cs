using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using appMapa.Entidades;

namespace appMapa.Datos
{
    public class clTipoEmpresaD
    {
        // Listar
        public List<clTipoEmpresaE> mtdListar()
        {
            string sql = "select * from tipoEmpresa";

            clConexion objConexion = new clConexion();

            DataTable tblTipoEmpresa = new DataTable();

            tblTipoEmpresa = objConexion.mtdDesconectado(sql);

            List<clTipoEmpresaE> objListaTipo = new List<clTipoEmpresaE>();

            for (int i = 0; i < tblTipoEmpresa.Rows.Count; i++)
            {
                clTipoEmpresaE objDatosTipo = new clTipoEmpresaE();
                objDatosTipo.idTipoEmpresa = int.Parse(tblTipoEmpresa.Rows[i]["idTipoEmpresa"].ToString());
                objDatosTipo.nombreTipo = tblTipoEmpresa.Rows[i]["nombreTipo"].ToString();

                objListaTipo.Add(objDatosTipo);

            }

            return objListaTipo;

        }


        // Registrar
        public int mtdRegistrar(clTipoEmpresaE objDatos)
        {
            // Consulta para verificar que no haya Servicios repetidos
            string sqlConsulta = "select * from tipoEmpresa where nombreTipo = '" + objDatos.nombreTipo + "' ";

            clConexion objConexionConsulta = new clConexion();

            DataTable tblTipoEmpresa = new DataTable();

            tblTipoEmpresa = objConexionConsulta.mtdDesconectado(sqlConsulta);


            if (tblTipoEmpresa.Rows.Count > 0)
            {
                return 0;

            }
            else
            {

                string sqlRegistro = "insert into tipoEmpresa (nombreTipo) values ('" + objDatos.nombreTipo + "')";

                clConexion objConexionRegistro = new clConexion();

                int resultado = objConexionRegistro.mtdConectado(sqlRegistro);

                return resultado;

            }

        }

    }
}