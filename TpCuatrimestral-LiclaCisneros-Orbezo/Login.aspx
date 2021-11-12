<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="TpCuatrimestral_LiclaCisneros_Orbezo.Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="estilos/login.css" rel="stylesheet" />

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-4">
                <form id="formUsuario" class="form-usuario" action="" autocomplete="off">
                    <label><b>Usuario</b></label>
                    <input type="text" placeholder="correo electrónico" id="usuario">
                    <label><b>Contraseña</b></label>
                    <input type="password" placeholder="******" id="contraseña">
                    <button type="button" onclick="ingresarData()">INGRESAR</button>
                    <span id="error" class="error" onclick="ocultar('formulario','formUsuario')"><a href="#">Registrarse</a></span>                    
                </form>
                <form id="formulario" class="formulario  mt-5" onsubmit="enviarForm">
                    <h1>Registrarte</h1>
                    <p>Es rápido y fácil</p>
                    <input id="Nombre" name="Nombre" class="Nombre" type="text" placeholder="Nombre">
                    <input id="Apellido" name="Apellido" class="Apellido" type="text" placeholder="Apellido">
                    <input id="Correo" name="Correo" class="Correo" type="email" placeholder="Correo electrónico">
                    <input id="Telefono" name="Telefono" class="Telefono" type="tel" placeholder="Teléfono">
                    <input id="Password1" name="Password1" class="Password" type="password" placeholder="Contraseña nueva">
                    <input id="Password2" name="Password2" class="Password" type="password" placeholder="Repetir contraseña">
                    <label>Fecha de nacimiento</label>
                    <span>
                        <select>
                            <option>1</option>
                            <option>2</option>
                            <option>3</option>
                            <option>4</option>
                            <option>5</option>
                            <option>6</option>
                            <option>7</option>
                            <option>8</option>
                            <option>9</option>
                            <option>20</option>
                            <option>21</option>
                            <option>22</option>
                            <option>23</option>
                            <option>24</option>
                            <option>25</option>
                            <option>26</option>
                            <option>27</option>
                            <option>28</option>
                            <option>29</option>
                            <option>30</option>
                            <option>31</option>
                        </select>
                        <select>
                            <option>Enero</option>
                            <option>Febrero</option>
                            <option>Marzo</option>
                            <option>Abril</option>
                            <option>Mayo</option>
                            <option>Junio</option>
                            <option>Julio</option>
                            <option>Agosto</option>
                            <option>Setiembre</option>
                            <option>Octubre</option>
                            <option>Noviembre</option>
                            <option>Diciembre</option>
                        </select>
                        <select>
                            <option>2021</option>
                            <option>2020</option>
                            <option>2019</option>
                            <option>2018</option>
                            <option>2017</option>
                            <option>2016</option>
                            <option>2015</option>
                            <option>2014</option>
                            <option>2013</option>
                            <option>2012</option>
                            <option>2011</option>
                            <option>2010</option>
                            <option>2009</option>
                            <option>2008</option>
                            <option>2007</option>
                            <option>2006</option>
                            <option>2005</option>
                            <option>2004</option>
                            <option>2003</option>
                            <option>2002</option>
                            <option>2001</option>
                            <option>2000</option>
                            <option>1999</option>
                            <option>1998</option>
                            <option>1997</option>
                            <option>1996</option>
                            <option>1995</option>
                            <option>1994</option>
                            <option>1993</option>
                            <option>1992</option>
                            <option>1991</option>
                            <option>1990</option>
                            <option>1989</option>
                            <option>1988</option>
                            <option>1987</option>
                            <option>1986</option>
                            <option>1985</option>
                            <option>1984</option>
                            <option>1983</option>
                            <option>1982</option>
                            <option>1981</option>
                            <option>1980</option>
                            <option>1979</option>
                            <option>1978</option>
                            <option>1977</option>
                            <option>1976</option>
                            <option>1975</option>
                            <option>1974</option>
                            <option>1973</option>
                            <option>1972</option>
                            <option>1971</option>
                            <option>1970</option>
                        </select>
                    </span>

                    <label>Sexo</label>
                    <span>
                        <label>
                            <input type="radio" name="Sexo" value="1">Mujer</label>
                        <label>
                            <input type="radio" name="Sexo" value="2">Hombre</label>
                        <label>
                            <input type="radio" name="Sexo" value="3">Personalizado</label>
                    </span>
                    <p>
                        Al hacer clic en "Registrarte", aceptas nuestras <a href="#">Condiciones</a>, 
        la <a href="#">Política de datos</a> y la <a href="#">Política de cookies</a>. 
        Es posible que te enviemos notificaciones por SMS, que puedes desactivar cuando 
        quieras.
                    </p>
                    <div>
                        <button id="botonEnviar" type="submit"><b>Registrarte</b></button>
                    </div>
                    <!--<button type="submit"><b>Registrarte</b></button>-->
                    <span id="error2" class="error2" onclick="ocultar('formUsuario','formulario')"><a href="#">Ya estoy registrado</a></span>
                </form>                
            </div>
        </div>
    </div>
    <script src="funciones/login.js"></script>
</asp:Content>
