﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Detalle.aspx.cs" Inherits="TpCuatrimestral_LiclaCisneros_Orbezo.Detalle" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="estilos/detalle.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div class="container">
        <div class="row fila">
            <div class="imagen col-lg-6 col-md-10">
                <img src="https://http2.mlstatic.com/D_NQ_NP_954583-MLA31512056604_072019-W.webp" alt="Imagen" width="100%" height="100%"/>
            </div>
            <div class="detalle col-lg-5 col-md-10">
                <h3>Pc Armada Gamer Amd A6-7480 3.8ghz Ssd 240g 4gb Win 10 64</h3>
                <p class="precio">$ 38.999</p>
                <h4>Stock Disponible</h4>
                <p class="unidades">10 Unidades</p>
                <p class="cantidad">Cantidad: <select>
                                <option>1</option>
                                <option>2</option>
                                <option>3</option>
                                <option>5</option>
                                <option>6</option>
                            </select>
                </p><br /><br />
                <asp:Button CssClass="agregar" Text="Agregar al carrito" runat="server" />
                <asp:Button CssClass="comprar" Text="Comprar Ahora" runat="server"/>
            </div>
        </div>
    </div>
</asp:Content>