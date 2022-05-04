
package modelo.dao;

import accesoBD.Conexion;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.swing.JOptionPane;
import modelo.bean.Producto;


public class ProductoDAO {
    
    /*
    id 1 = conservas
    id 2 = bebidas
    id 3 = ropa
    id 4 = piqueos
    */
    public static ArrayList<Producto> listarProductosPorCategoria(int idcategoria){
        Connection cn = Conexion.abrir();
        String sql = "select*from producto where idcategoriak=?";
        ArrayList<Producto> producto = new ArrayList<>();
        Producto prod;
        try {
            PreparedStatement ps = cn.prepareStatement(sql);
            ps.setInt(1, idcategoria);
            ResultSet rs = ps.executeQuery();
            
            while(rs.next()){
                
              int idproducto =  rs.getInt("idproducto");
              String nombre=  rs.getString("nombre");
             String descripcion=   rs.getString("descripcion");
             float precio=   rs.getFloat("precio");
             String imagen=   rs.getString("imagen");
              int idcategoriak =  rs.getInt("idcategoriak");
                
                
                prod = new Producto(idproducto, nombre, descripcion, precio, imagen, idcategoriak);
                producto.add(prod);
            }
        } catch (SQLException ex) {
            JOptionPane.showMessageDialog(null,"error al listar producto: "+ex.getMessage());
        }
        
        return producto;
    }
    
    
      public static Producto buscarArticuloID(int codigo){
       Producto prod=null;
       //sql
       String sql = "select*from producto where idproducto=?";
       
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
               prod=new Producto(rs.getInt("idproducto"),rs.getString("nombre"),
               rs.getString("descripcion"),rs.getFloat("precio"),
               rs.getString("imagen"),rs.getInt("idcategoriak"));
            
           }
       } catch (SQLException ex) {
           JOptionPane.showMessageDialog(null, "no se pudo encontrar el articulo: "+ex.getMessage());
           
       }
       return prod;
   }
      
    
    
    
}
