using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data.SqlClient;
using Dominio;

namespace Negocio
{
    public class ArticuloNegocio
    {
        public List<Articulo> listar()
        {
            List<Articulo> lista = new List<Articulo>();
            SqlConnection conexion = new SqlConnection();
            SqlCommand comando = new SqlCommand();
            SqlDataReader lector;
            try
            {
                conexion.ConnectionString = "server=.\\SQLEXPRESS; database=CATALOGO_DB; integrated security=true";
                comando.CommandType = System.Data.CommandType.Text;
                comando.CommandText = "SELECT Articulos.Id, Codigo, Nombre, ARTICULOS.Descripcion, MARCAS.Descripcion Marca, CATEGORIAS.Descripcion Categoria,ImagenUrl, Precio FROM ARTICULOS INNER JOIN MARCAS ON ARTICULOS.IdMarca = MARCAS.Id INNER JOIN CATEGORIAS ON ARTICULOS.IdCategoria = CATEGORIAS.Id";
                comando.Connection = conexion;
                conexion.Open();
                lector = comando.ExecuteReader();

                while (lector.Read())
                {
                    Articulo aux = new Articulo();
                    aux.id = (int)lector["Id"];
                    aux.codigo = (string)lector["Codigo"];
                    aux.nombre = (string)lector["Nombre"];
                    aux.descripcion = (string)lector["Descripcion"];
                    //aux.marca = (int)lector["IdMarca"];
                    //aux.descripcionMarca = (string)lector["Marca"];
                    aux.marca = new Marca();
                    aux.marca.descripcion = (string)lector["Marca"];

                    //aux.categoria = (int)lector["IdCategoria"];
                    //aux.descripcionCategoria = (string)lector["Categoria"];
                    aux.categoria = new Categoria();
                    aux.categoria.descripcion = (string)lector["Categoria"];

                    aux.Url = (string)lector["imagenUrl"];
                    aux.precio = (decimal)lector["Precio"];
                    lista.Add(aux);
                }
                conexion.Close();
                return lista;
            }
            catch (Exception ex)
            {

                throw ex;
            }

        }          
    }
}
