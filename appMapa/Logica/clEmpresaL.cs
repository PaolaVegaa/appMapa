using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using appMapa.Entidades;
using appMapa.Datos;

namespace appMapa.Logica
{
    public class clEmpresaL
    {
        // Listado de Empresas
        public List<clEmpresaE> mtdListar()
        {
            clEmpresaD objEmpresaD = new clEmpresaD();
            List<clEmpresaE> objLista = new List<clEmpresaE>();
            objLista = objEmpresaD.mtdListar();
            return objLista;

        }

        // Registro de Empresas
        public int mtdRegistrar(clEmpresaE objDatos)
        {
            clEmpresaD objEmpresa = new clEmpresaD();
            int resultado = objEmpresa.mtdRegistrar(objDatos);
            return resultado;

        }

        // Contador
        public int mtdContador()
        {
            clEmpresaD objEmpresa =new clEmpresaD();
            int contador = objEmpresa.mtdContador();
            return contador;
        }

    }
}