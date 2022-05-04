
package modelo.bean;

public class Articulo {
    int idproducto;
    String nombre;
    String descripcion;
    float precio;
    String imagen;
    int idcategoriak;

    public Articulo(int idproducto, String nombre, String descripcion, float precio, String imagen, int idcategoriak) {
        this.idproducto = idproducto;
        this.nombre = nombre;
        this.descripcion = descripcion;
        this.precio = precio;
        this.imagen = imagen;
        this.idcategoriak = idcategoriak;
    }

    public Articulo(String nombre, String descripcion, float precio, String imagen, int idcategoriak) {
        this.nombre = nombre;
        this.descripcion = descripcion;
        this.precio = precio;
        this.imagen = imagen;
        this.idcategoriak = idcategoriak;
    }

    public int getIdproducto() {
        return idproducto;
    }

    public void setIdproducto(int idproducto) {
        this.idproducto = idproducto;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getDescripcion() {
        return descripcion;
    }

    public void setDescripcion(String descripcion) {
        this.descripcion = descripcion;
    }

    public float getPrecio() {
        return precio;
    }

    public void setPrecio(float precio) {
        this.precio = precio;
    }

    public String getImagen() {
        return imagen;
    }

    public void setImagen(String imagen) {
        this.imagen = imagen;
    }

    public int getIdcategoriak() {
        return idcategoriak;
    }

    public void setIdcategoriak(int idcategoriak) {
        this.idcategoriak = idcategoriak;
    }
    
    


    
}
