<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Detalle.aspx.cs" Inherits="TpCuatrimestral_LiclaCisneros_Orbezo.Detalle" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="estilos/detalle.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div class="container">
        <div class="row fila">
            <div class="imagen col-lg-6 col-md-10">
                <img src="<%=articulo.Url%>" alt="Imagen" width="100%" height="100%"/>
            </div>
            <div class="detalle col-lg-5 col-md-10">
                <h3><%=articulo.nombre%> - <%=articulo.descripcion%></h3>
                <p class="precio">$<%=articulo.precio %></p>
                <h4>Stock Disponible</h4>
                <p class="unidades">10 Unidades</p>
                <p class="cantidad">Cantidad: <p class="cantidad"><asp:TextBox ID="txtCantidad" runat="server" Width="55px" type="number" min="1" max="99" Text="1"></asp:TextBox>
                </p><br /><br />
   
                <asp:Button CssClass="agregar" Text="Agregar al carrito" runat="server" ID="btnAgregar" OnClick="btnAgregar_Click" />
                <asp:Button CssClass="comprar" Text="Comprar Ahora" runat="server" ID="Comprar" OnClick="Comprar_Click"/>
            </div>
        </div>
    </div>
</asp:Content>
