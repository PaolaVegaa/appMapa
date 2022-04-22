using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace appMapa.Entidades
{
    public class clEmpresaE
    {
        public int idEmpresa { get; set; }
        public string nombreEmpresa { get; set; }
        public string direccion { get; set; }
        public string descripcion { get; set; }
        public string url { get; set; }
        public string latitud { get; set; }
        public string longitud { get; set; }
        public int idTipoEmpresa { get; set; }


    }
}