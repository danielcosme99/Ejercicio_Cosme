
package modelo.dao;

import accesoBD.Conexion;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import modelo.bean.Carrito;
import modelo.bean.Talla;

public class TallaDAO {
    
     public static Talla buscarTallaID(int idtalla){
       Talla tall=null;
       //sql
       String sql = "Select*from talla where idtalla=?";
       
       //conexion a la bd
       Connection cn=Conexion.abrir();
       
       try {
           //ejecutar instruccion sql con su metodo exectQuery
           PreparedStatement ps = cn.prepareStatement(sql);
           //asignar valor a los parametros
           ps.setInt(1, idtalla);
           //ejecutar
           ResultSet rs= ps.executeQuery();
           
           if(rs.next()){
              tall = new Talla(rs.getInt("idtalla"),rs.getString("talla"));
              
           }
       } catch (SQLException ex) {
           
       }
       return tall;
   }
    
}
