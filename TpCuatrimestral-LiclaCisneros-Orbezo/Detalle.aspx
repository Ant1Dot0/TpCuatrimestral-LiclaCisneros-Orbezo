<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Detalle.aspx.cs" Inherits="TpCuatrimestral_LiclaCisneros_Orbezo.Detalle" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div class="container">
        <div class="row" style="align-items:center;">
            <div class="imagen" style="width:50%;height:500px;border:1px solid black;margin-right:50px;margin-top:40px;">
                <img src="https://http2.mlstatic.com/D_NQ_NP_954583-MLA31512056604_072019-W.webp" alt="Imagen" width="100%" height="100%"/>
            </div>
            <div class="detalle Detalle" style="width:40%;height:500px;margin-top:40px;display:flex;flex-direction:column;align-items:center;justify-content:center;">
                <h3 style="text-align:justify;padding:10px;">Pc Armada Gamer Amd A6-7480 3.8ghz Ssd 240g 4gb Win 10 64</h3>
                <p style="font-size:50px;">$ 38.999</p>
                <h4>Stock Disponible</h4>
                <p>10 Unidades</p>
                <p>Cantidad: <select style="width:80px;text-align:center;">
                    <option>1</option>
                    <option>2</option>
                    <option>3</option>
                    <option>5</option>
                    <option>6</option>
                </select>
                </p><br /><br />
                <asp:Button Text="Agregar al carrito" runat="server" style="width:97%;height:50px;margin-bottom:10px;border-radius:5px;background-color:mediumblue;color:white;font-weight:600;"/>
                <asp:Button Text="Comprar Ahora" runat="server" style="width:97%;height:50px;border-radius:5px;background-color:cornflowerblue;color:white;font-weight:600;"/>
            </div>
        </div>
    </div>
</asp:Content>
