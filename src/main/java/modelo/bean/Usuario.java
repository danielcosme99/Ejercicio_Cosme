
package modelo.bean;


public class Usuario {
    
    public int idusuario;
    public String usuario;
    public String nombre;
    public String contraseña;

    public Usuario() {
    }

    public Usuario(int idusuario, String usuario, String nombre, String contraseña) {
        this.idusuario = idusuario;
        this.usuario = usuario;
        this.nombre = nombre;
        this.contraseña = contraseña;
    }

    public Usuario(String usuario, String nombre, String contraseña) {
        this.usuario = usuario;
        this.nombre = nombre;
        this.contraseña = contraseña;
    }
    
    

    public int getIdusuario() {
        return idusuario;
    }

    public void setIdusuario(int idusuario) {
        this.idusuario = idusuario;
    }

    public String getUsuario() {
        return usuario;
    }

    public void setUsuario(String usuario) {
        this.usuario = usuario;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getContraseña() {
        return contraseña;
    }

    public void setContraseña(String contraseña) {
        this.contraseña = contraseña;
    }
    
    
    
    
    
}
