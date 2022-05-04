
package accesoBD;

import java.sql.Connection;
import java.sql.DriverManager;
import java.util.logging.Level;
import java.util.logging.Logger;

public class Conexion {
    private static String url="jdbc:mysql://localhost/bdproyecto2";
    private static String usuario="root";
    private static String clave="";
    private static Connection cn=null;
    
    public static Connection abrir(){
        try {
            //registrar driver de mysql
            Class.forName("com.mysql.jdbc.Driver");
            //abrir la conexion
            cn = DriverManager.getConnection(url, usuario, clave);
        } catch (Exception ex) {
            Logger.getLogger(Conexion.class.getName()).log(Level.SEVERE, null, ex);
        }
        return cn;
    }
}
