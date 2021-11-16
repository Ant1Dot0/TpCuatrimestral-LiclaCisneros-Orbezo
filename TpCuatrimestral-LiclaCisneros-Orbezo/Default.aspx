<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="TpCuatrimestral_LiclaCisneros_Orbezo.Default" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">        
        <div class="row" style="display: flex; flex-direction: row; justify-content:space-between;flex-wrap:wrap;">            
           <%int count = 0; foreach (var arti in ListaArticulos)
               {%>
                <div class="card" style="width: 18rem;height:30rem;margin-bottom:20px;border:1px solid black;">
                  <img src="<%=arti.Url%>" class="card-img-top" alt="No Disponible" width="100%" height="55%" style="background-color:lightgray;">
                  <div class="card-body" style="border-top:1px solid black;display:flex;flex-direction:column;align-items:center;">
                      <h5 class="card-title"><%=arti.nombre %></h5>
                      <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>

                      <a href="Detalle.aspx?contador=<%=count%>" class="btn btn-success">Ver más</a>
                  </div>
               </div>
           <% count++;
               }%>
        </div>
    </div>
</asp:Content>
