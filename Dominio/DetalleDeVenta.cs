using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Dominio
{
    class DetalleDeVenta
    {
        public Venta id { get; set; }
        public Articulo codigo { get; set; }
        public int cantidad { get; set; }
        public decimal precioUnitario { get; set; }
    }
}
