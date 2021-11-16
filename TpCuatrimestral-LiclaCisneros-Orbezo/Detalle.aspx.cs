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
            articulo = new Articulo();
            articulo = ListaArticulos[cont];
        }
    }
}