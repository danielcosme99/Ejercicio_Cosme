
package modelo.dao;

import accesoBD.Conexion;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import modelo.bean.Usuario;


public class UsuarioDAO {
    
    
   public static Usuario ObtenerUsuario(String usuario,String contraseña){
       
       Connection cn = Conexion.abrir();
       String sql = "select*from usuario where usuario=? and contraseña=?";
       Usuario us = null;
       try {
           PreparedStatement ps = cn.prepareStatement(sql);
           ps.setString(1, usuario);
           ps.setString(2, contraseña);
           
           ResultSet rs= ps.executeQuery();
           
           if(rs.next()){
               
               us = new Usuario(rs.getInt("idusuario"),rs.getString("usuario"),
               rs.getString("nombre"),rs.getString("contraseña"));
               
               
           }
           
           
       } catch (SQLException ex) {
           Logger.getLogger(UsuarioDAO.class.getName()).log(Level.SEVERE, null, ex);
       }
       
       return us;
       
   }
   
   public static Usuario ObtenerUsuarioporUsuario(String usuario){
       
       Connection cn = Conexion.abrir();
       String sql = "select*from usuario where usuario=?";
       Usuario us = null;
       try {
           PreparedStatement ps = cn.prepareStatement(sql);
           ps.setString(1, usuario);
       
           ResultSet rs= ps.executeQuery();
           
           if(rs.next()){
               
               us = new Usuario(rs.getInt("idusuario"),rs.getString("usuario"),
               rs.getString("nombre"),rs.getString("contraseña"));
               
               
           }
           
           
       } catch (SQLException ex) {
           Logger.getLogger(UsuarioDAO.class.getName()).log(Level.SEVERE, null, ex);
       }
       
       return us;
       
   }
   
  
   
   public static void InsertarUsuario(Usuario us){
       
        Connection cn = Conexion.abrir();
       String sql = "insert into usuario (usuario,nombre,contraseña) values (?,?,?)";
       
       try {
           PreparedStatement ps = cn.prepareStatement(sql);
           ps.setString(1, us.getUsuario());
           ps.setString(2, us.getNombre());
           ps.setString(3, us.getContraseña());
           
           ps.executeUpdate();
           
       } catch (SQLException ex) {
           Logger.getLogger(UsuarioDAO.class.getName()).log(Level.SEVERE, null, ex);
       }
       
       
       
   }
   
    
    
    
}
