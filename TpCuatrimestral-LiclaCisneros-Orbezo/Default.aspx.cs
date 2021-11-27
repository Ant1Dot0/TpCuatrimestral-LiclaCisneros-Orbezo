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
    public partial class Default : System.Web.UI.Page
    {
        public List<Articulo> ListaArticulos { get; set; }
        public List<Articulo> carrito { get; set; }
        public Articulo articuloAgregado { get; set; }
        protected void Page_Load(object sender, EventArgs e)
        {
            ArticuloNegocio reg = new ArticuloNegocio();
            ListaArticulos = reg.listar();
            carrito = (List<Articulo>)Session["carritoCompra"];

            if (carrito == null)
            {
                carrito = new List<Articulo>();
                articuloAgregado = new Articulo();
            }
            Session.Add("listaArt", ListaArticulos);
        }

    }
}