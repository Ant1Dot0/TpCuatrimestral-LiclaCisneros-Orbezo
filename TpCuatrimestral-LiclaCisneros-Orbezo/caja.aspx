<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="caja.aspx.cs" Inherits="TpCuatrimestral_LiclaCisneros_Orbezo.caja" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section id="ArticulosPagar">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <div class="card mt-2">
                        <div class="card-header">
                            <h4 style="text-align:center">Listado de Articulos</h4>
                            <table class="table table-striped">
                                <thead class="thead-dark">
                                    <tr>
                                        <th>Codigo</th>
                                        <th>Nombre</th>
                                        <th>Precio</th>
                                        <th>acciones</th>
                                    </tr>
                                </thead>
                                <tbody>

                                    <%int count = 0; foreach (var arti in listaArticulos)
                                        {  %>
                                    <tr>
                                        <td><%=arti.codigo%></td>
                                        <td><%=arti.nombre%></td>
                                        <td><%=arti.precio%></td>
                                        <td>
                                            <a href="Caja.aspx?contador=<%=count%>" title="Quitar item de la lista" class="btn btn-secondary" onclick='agregarAlertaSub()'><i class="fa-solid fa-minus"></i></a>
                                        </td>
                                    </tr>
                                    <% count++;
                                        } %>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
</asp:Content>
