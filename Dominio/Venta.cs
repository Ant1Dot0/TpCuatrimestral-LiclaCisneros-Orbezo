using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Dominio
{
    class Venta
    {
        public string codigo_venta { get; set; }
        public Cliente dni { get; set; }
        public DateTime fecha { get; set; }
        public FormaDePago id { get; set; }
        public decimal ingresoTotal { get; set; }
    }
}
