using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Dominio;
using Negocio;

namespace TpCuatrimestral_LiclaCisneros_Orbezo
{
    public partial class caja : System.Web.UI.Page
    {
        public List<Detalle> detalleVenta { get; set; }
        public List<Articulo> carrito { get; set; }
        public decimal totalPagar { get; set; }
        protected void Page_Load(object sender, EventArgs e)
        {
            ArticuloNegocio nuevo = new ArticuloNegocio();

            detalleVenta = new List<Detalle>();
            carrito = (List<Articulo>)Session["carritoCompra"];

            if (carrito == null)
            {
                carrito = new List<Articulo>();
            }
            Session.Add("carritoCompra", carrito);

            if (carrito.Count == 0)
                Response.Redirect("carroVacio.aspx", false);
                
            sumaTotal();
            quitarArticulo();
        }

        private void quitarArticulo()
        {
            int cont;

            if (Request.QueryString["contador"] != null)
            {
                cont = int.Parse(Request.QueryString["contador"].ToString());
                carrito.RemoveAt(cont);
                Session.Add("carritoCompra", carrito);
                Response.Redirect("Caja.aspx");
            }
        }

        private void sumaTotal()
        {
            totalPagar = 0;
            foreach (var item in carrito)
            {
                totalPagar += item.precio;
            }
            Session.Add("total", totalPagar);
        }

        protected void btnPagar_Click(object sender, EventArgs e)
        {
            carrito.RemoveRange(0, carrito.Count);
            Session.Add("carritoCompra", carrito);
            totalPagar = 0;
        }
    }
}