using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using appMapa.Entidades;
using appMapa.Datos;

namespace appMapa.Logica
{
    public class clTipoEmpresaL
    {
        // Listar
        public List<clTipoEmpresaE> mtdListar()
        {
            clTipoEmpresaD objTipoEmpresa = new clTipoEmpresaD();
            List<clTipoEmpresaE> objLista = new List<clTipoEmpresaE>();
            objLista = objTipoEmpresa.mtdListar();
            return objLista;

        }

        // Registrar
        public int mtdRegistrar(clTipoEmpresaE objDatos)
        {
            clTipoEmpresaD objTipoEmpresa = new clTipoEmpresaD();
            int resultado = objTipoEmpresa.mtdRegistrar(objDatos);
            return resultado;

        }

    }
}