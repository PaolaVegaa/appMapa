using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using appMapa.Entidades;

namespace appMapa.Datos
{
    public class clEmpresaD
    {
        // Lista
        public List<clEmpresaE> mtdListar()
        {
            string sql = "select * from empresa";

            clConexion objConexion = new clConexion();

            DataTable tblListaEmpresa = new DataTable();

            tblListaEmpresa = objConexion.mtdDesconectado(sql);

            List<clEmpresaE> objListaEmpresa = new List<clEmpresaE>();

            for (int i = 0; i < tblListaEmpresa.Rows.Count; i++)
            {
                clEmpresaE objDatos = new clEmpresaE();
                objDatos.idEmpresa = int.Parse(tblListaEmpresa.Rows[i]["idEmpresa"].ToString());
                objDatos.nombreEmpresa = tblListaEmpresa.Rows[i]["nombreEmpresa"].ToString();
                objDatos.direccion = tblListaEmpresa.Rows[i]["direccion"].ToString();
                objDatos.descripcion = tblListaEmpresa.Rows[i]["descripcion"].ToString();
                objDatos.url = tblListaEmpresa.Rows[i]["url"].ToString();
                objDatos.latitud = tblListaEmpresa.Rows[i]["latitud"].ToString();
                objDatos.longitud = tblListaEmpresa.Rows[i]["longitud"].ToString();
                objDatos.idTipoEmpresa = int.Parse(tblListaEmpresa.Rows[i]["idTipoEmpresa"].ToString());

                objListaEmpresa.Add(objDatos);

            }

            return objListaEmpresa;

        }

        // Registro
        public int mtdRegistrar(clEmpresaE objDatos)
        {

            string sql = "insert into empresa (nombreEmpresa, direccion, descripcion, url, latitud, longitud, idTipoEmpresa) values " +
                "('" + objDatos.nombreEmpresa + "', '" + objDatos.direccion + "', '" + objDatos.descripcion + "', '" + objDatos.url + "', '" + objDatos.latitud + "', '" + objDatos.longitud + "', " + objDatos.idTipoEmpresa + ")";

            clConexion objConexion = new clConexion();

            int resultado = objConexion.mtdConectado(sql);

            return resultado;

        }


        // Contador
        public int mtdContador()
        {
            string sql = "select * from empresa ";

            clConexion objConexion = new clConexion();

            DataTable tblContador = new DataTable();

            tblContador = objConexion.mtdDesconectado(sql);

            int contador = tblContador.Rows.Count;

            return contador;

        }

    }
}