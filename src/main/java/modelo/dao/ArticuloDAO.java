
package modelo.dao;

import accesoBD.Conexion;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import modelo.bean.Articulo;
import modelo.bean.Carrito;
import modelo.bean.Producto;

public class ArticuloDAO {
    public static Producto buscarArticuloID(int codigo){
       Producto prod=null;
       //sql
       String sql = "Select*from producto where idproducto=?";
       
       //conexion a la bd
       Connection cn=Conexion.abrir();
       
       try {
           //ejecutar instruccion sql con su metodo exectQuery
           PreparedStatement ps = cn.prepareStatement(sql);
           //asignar valor a los parametros
           ps.setInt(1, codigo);
           //ejecutar
           ResultSet rs= ps.executeQuery();
           
           if(rs.next()){
               prod=new Producto(rs.getInt("idarticulo"),rs.getString("nombre"),
               rs.getString("descripcion"),rs.getFloat("precio"),
               rs.getString("imagen"),rs.getInt("idcategoriak"));
            
           }
       } catch (SQLException ex) {
           
       }
       return prod;
   } 
    /*
   public static ArrayList<Articulo> listar(){
       //arreglo de articulos
       ArrayList<Articulo> articulos = new ArrayList<>();
       //conecion a la bd
       Connection cn = Conexion.abrir();
       //Instruccion sql para listar
       String sql = "SELECT * FROM ARTICULO";
        try {
            //Objeto para ejecutar intruccion sql
            PreparedStatement ps = cn.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            //variable empleado
            Articulo art;
            while(rs.next()){
                art = new Articulo();
                art.setIdarticulo(rs.getInt("idarticulo"));
                art.setNombre(rs.getString("nombre"));
                art.setDescripcion(rs.getString("descripcion"));
                art.setPrecio(rs.getFloat("precio"));
                art.setImagen(rs.getString("imagen"));
                //agregar objeto articulo al arreglo
                articulos.add(art);
            }
            cn.close();
            ps.close();
            rs.close();
        } catch (SQLException ex) {
            System.out.println("Error: "+ex.getMessage());;
        }
       
       return articulos;
   }*/
   
    
   
}
