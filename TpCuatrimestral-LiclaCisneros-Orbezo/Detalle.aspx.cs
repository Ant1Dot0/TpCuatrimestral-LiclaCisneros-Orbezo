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
    public partial class Detalle : System.Web.UI.Page
    {
        public List<Articulo> ListaArticulos { get; set; }
        public List<Articulo> carrito { get; set; }
        public Articulo articuloAgregado { get; set; }
        public Articulo articulo { get; set; }
        protected void Page_Load(object sender, EventArgs e)
        {
            int cont = int.Parse(Request.QueryString["contador"].ToString());
            ListaArticulos = (List<Articulo>)Session["listaArt"];
            carrito = (List<Articulo>)Session["carritoCompra"];

            if (carrito == null)
            {
                carrito = new List<Articulo>();
                articuloAgregado = new Articulo();
            }
            articulo = new Articulo();
            articulo = ListaArticulos[cont];
        }

        void agregarAlCarrito()
        {
            int cont;
            bool nuevo = true;
            Articulo aux = articulo;
            if (Request.QueryString["contador"] != null)
            {
                cont = int.Parse(Request.QueryString["contador"].ToString());
                for(int i =0; i < carrito.Count; i++)
                {
                    if (carrito[i].id == ListaArticulos[cont].id)
                    {
                        carrito[i].stock += int.Parse(txtCantidad.Text);
                        nuevo = false;
                    }
                }

                if(nuevo)
                {
                    aux.stock = 1;
                    carrito.Add(aux);
                }
                Session.Add("carritoCompra", carrito);
            }
        }

        protected void btnAgregar_Click(object sender, EventArgs e)
        {
            agregarAlCarrito();
            Response.Redirect("Default.aspx");
        }

        protected void Comprar_Click(object sender, EventArgs e)
        {
            agregarAlCarrito();
            Response.Redirect("caja.aspx");
        }
    }
}