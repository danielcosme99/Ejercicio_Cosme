
package modelo.dao;

import accesoBD.Conexion;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import javax.swing.JOptionPane;
import modelo.bean.Carrito;
import modelo.bean.Producto;

public class CarritoDAO {
    
      public static void insertarCarrito(Carrito car){
       //para insertar un empleado
       String sql = "insert into carrito (idproducto,nombreProducto,imagen,precio,cantidad,monto) values (?,?,?,?,?,?)";
       Connection cn = Conexion.abrir();
       try {
            //Objeto para ejecutar intruccion sql
            PreparedStatement ps = cn.prepareStatement(sql);
            //asiganar valor a los parametros
            ps.setInt(1, car.getIdproducto());
            ps.setString(2,car.getNombreProducto());
            ps.setString(3, car.getImagen());
            ps.setFloat(4,car.getPrecio());
            ps.setInt(5, car.getCantidad());
            ps.setFloat(6, car.getMonto());
           
            //ejecutar Update() para insert, edit, delete
            ps.executeUpdate();
            //cerrar objetos
            cn.close();
            ps.close();
        } catch (SQLException ex) {
           
        }
   }
      
      
      public static ArrayList<Carrito> listar(){
       //arreglo de articulos
       ArrayList<Carrito> articulos = new ArrayList<>();
       //conecion a la bd
       Connection cn = Conexion.abrir();
       //Instruccion sql para listar
       String sql = "SELECT * FROM CARRITO";
        try {
            //Objeto para ejecutar intruccion sql
            PreparedStatement ps = cn.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            //variable empleado
            Carrito car;
            while(rs.next()){
                car = new Carrito(rs.getInt("idcarrito"),rs.getInt("idproducto"),
                rs.getString("nombreProducto"),rs.getString("imagen"),rs.getFloat("precio")
                ,rs.getInt("cantidad"),rs.getFloat("monto"));
        
                //agregar objeto articulo al arreglo
                articulos.add(car);
            }
            cn.close();
            ps.close();
            rs.close();
        } catch (SQLException ex) {
            JOptionPane.showMessageDialog(null,"error al listar: "+ex.getMessage());
        }
       
       return articulos;
   }
      
      
      public static float sumarMonto(){
       //para insertar un empleado
       String sql = "SELECT * from CARRITO;";
       float montoTotal = 0;
       Connection cn = Conexion.abrir();
       
       try {
            //Objeto para ejecutar intruccion sql
            PreparedStatement ps = cn.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
           
            
            while(rs.next()){
                float mont = rs.getFloat("monto");
                montoTotal = montoTotal + mont;
                
            }
            
            cn.close();
            ps.close();
            rs.close();
        } catch (SQLException ex) {
            System.out.println("Error: "+ex.getMessage());;
        }
   return montoTotal;
   }
      
      
      public static void eliminarCarrito(int codigo){
       //para insertar un empleado
       String sql = "DELETE FROM CARRITO WHERE IDCARRITO=?";
       Connection cn = Conexion.abrir();
       try {
            //Objeto para ejecutar intruccion sql
            PreparedStatement ps = cn.prepareStatement(sql);
            //asiganar valor a los parametros
            ps.setInt(1, codigo);
            //ejecutar Update() para insert, edit, delete
            ps.executeUpdate();
            //cerrar objetos
            cn.close();
            ps.close();
        } catch (SQLException ex) {
            JOptionPane.showMessageDialog(null,"error al eliminar: "+ex.getMessage());
        }
   }
      
      
       
   public static void editarCarrito(int cantidad,float monto, int idcarrito){
       //para insertar un empleado
       String sql = "UPDATE CARRITO SET cantidad=?,monto=? WHERE IDCARRITO=?";
       Connection cn = Conexion.abrir();
       try {
            //Objeto para ejecutar intruccion sql
            PreparedStatement ps = cn.prepareStatement(sql);
            //asiganar valor a los parametros
           
            ps.setInt(1, cantidad);
            ps.setFloat(2, monto);
            ps.setInt(3, idcarrito);
            //ejecutar Update() para insert, edit, delete
            ps.executeUpdate();
            //cerrar objetos
            cn.close();
            ps.close();
        } catch (SQLException ex) {
          JOptionPane.showMessageDialog(null,"error al editar: "+ex.getMessage());
        }
   }
   
   
    public static Carrito buscarArticuloID(int codigo){
       Carrito car=null;
       //sql
       String sql = "Select*from carrito where idcarrito=?";
       
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
               car=new Carrito(rs.getInt("idcarrito"),rs.getInt("idproducto"),
               rs.getString("nombreProducto"),rs.getString("imagen"),rs.getFloat("precio"),
               rs.getInt("cantidad"),rs.getFloat("monto"));
            
           }
       } catch (SQLException ex) {
           JOptionPane.showMessageDialog(null,"error al obtener articulo car: "+ex.getMessage());
       }
       return car;
   }
    //buscar carrito por id
        public static Carrito buscarIDProductoCarrito(int codigo){
       Carrito car=null;
       //sql
       String sql = "Select*from carrito where idproducto=?";
       
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
              car = new Carrito
        (rs.getInt("idcarrito"),rs.getInt("idproducto"),
        rs.getString("nombreProducto"),rs.getString("imagen"),
        rs.getFloat("precio"),rs.getInt("cantidad"),rs.getFloat("monto"));
           }
       } catch (SQLException ex) {
           
       }
       return car;
   } 
        
     public static void agregarCarrito() {
        //sql
       String sql = "Truncate carrito";
       
       //conexion a la bd
       Connection cn=Conexion.abrir();
       
        try {
            //Objeto para ejecutar intruccion sql
            PreparedStatement ps = cn.prepareStatement(sql);
            //asiganar valor a los parametros
            //ejecutar Update() para insert, edit, delete
            ps.executeUpdate();
            //cerrar objetos
            cn.close();
            ps.close();
        } catch (SQLException ex) {
            JOptionPane.showMessageDialog(null,"error al eliminar: "+ex.getMessage());
        }
    }
        
      
   /*   public static boolean buscarCarritoNombreBoolean(String nombre){
          Connection cn = Conexion.abrir();
          String sql = "select*from carrito where nombre=?";
          
          return false;
      }
      */
      /*
      
    public static Carrito buscarCarritoID(int codigo){
       Carrito car=null;
       //sql
       String sql = "Select*from carrito where idcarrito=?";
       
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
              car = new Carrito(rs.getInt("idcarrito"),rs.getInt("idarticulo"),
                rs.getString("nombreProducto"),rs.getInt("idtalla"),
                rs.getString("talla"),rs.getInt("cantidad"),
                rs.getFloat("precioUnitario"),rs.getFloat("monto"),
                rs.getString("imagen"));
           }
       } catch (SQLException ex) {
           
       }
       return car;
   } 
    
   public static ArrayList<Carrito> listar(){
       //arreglo de articulos
       ArrayList<Carrito> articulos = new ArrayList<>();
       //conecion a la bd
       Connection cn = Conexion.abrir();
       //Instruccion sql para listar
       String sql = "SELECT * FROM CARRITO";
        try {
            //Objeto para ejecutar intruccion sql
            PreparedStatement ps = cn.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            //variable empleado
            Carrito car;
            while(rs.next()){
                car = new Carrito(rs.getInt("idcarrito"),rs.getInt("idarticulo"),
                rs.getString("nombreProducto"),rs.getInt("idtalla"),
                rs.getString("talla"),rs.getInt("cantidad"),
                rs.getFloat("precioUnitario"),rs.getFloat("monto"),
                rs.getString("imagen"));
                car.setIdcarrito(rs.getInt("idcarrito"));
                car.setIdarticulo(rs.getInt("idarticulo"));
                car.setNombreProducto(rs.getString("nombreProducto"));
               car.setIdtalla(rs.getInt("idtalla"));
               car.setTalla(rs.getString("talla"));
               car.setCantidad(rs.getInt("cantidad"));
               car.setPrecioUnitario(rs.getFloat("precioUnitario"));
               car.setMonto(rs.getFloat("monto"));
               car.setImagen(rs.getString("imagen"));
                //agregar objeto articulo al arreglo
                articulos.add(car);
            }
            cn.close();
            ps.close();
            rs.close();
        } catch (SQLException ex) {
            System.out.println("Error: "+ex.getMessage());;
        }
       
       return articulos;
   }
 
  
   
   public static void eliminarCarrito(int codigo){
       //para insertar un empleado
       String sql = "DELETE FROM CARRITO WHERE IDCARRITO=?";
       Connection cn = Conexion.abrir();
       try {
            //Objeto para ejecutar intruccion sql
            PreparedStatement ps = cn.prepareStatement(sql);
            //asiganar valor a los parametros
            ps.setInt(1, codigo);
            //ejecutar Update() para insert, edit, delete
            ps.executeUpdate();
            //cerrar objetos
            cn.close();
            ps.close();
        } catch (SQLException ex) {
            System.out.println("Error: "+ex.getMessage());;
        }
   }
   
   
    */
    
}
