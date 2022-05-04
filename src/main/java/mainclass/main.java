
package mainclass;

import modelo.bean.Usuario;
import modelo.dao.UsuarioDAO;


public class main {
    
    
    public static void main(String[] args) {
        String usuario="elcacas";
        String contraseña="123";
        Usuario us = UsuarioDAO.ObtenerUsuario(usuario, contraseña);
        System.out.println("idus:"+us.getIdusuario());
        System.out.println("Nombre:"+us.getNombre());
        System.out.println("usuar:"+us.getUsuario());
        System.out.println("Contra:"+us.getContraseña());
    }
    
}
