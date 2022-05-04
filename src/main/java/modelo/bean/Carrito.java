
package modelo.bean;

public class Carrito {
   int idcarrito;
   int idproducto;
   String nombreProducto;
   String imagen;
   float precio;
   int cantidad;
   float monto;
   //int idtalla;
   //String talla;
   
  // 
  // float monto;
//   

    public Carrito(int idcarrito, int idproducto, String nombreProducto, String imagen, float precio, int cantidad, float monto) {
        this.idcarrito = idcarrito;
        this.idproducto = idproducto;
        this.nombreProducto = nombreProducto;
        this.imagen = imagen;
        this.precio = precio;
        this.cantidad = cantidad;
        this.monto = monto;
    }

    public Carrito(int idproducto, String nombreProducto, String imagen, float precio, int cantidad, float monto) {
        this.idproducto = idproducto;
        this.nombreProducto = nombreProducto;
        this.imagen = imagen;
        this.precio = precio;
        this.cantidad = cantidad;
        this.monto = monto;
    }

    public int getIdcarrito() {
        return idcarrito;
    }

    public void setIdcarrito(int idcarrito) {
        this.idcarrito = idcarrito;
    }

    public int getIdproducto() {
        return idproducto;
    }

    public void setIdproducto(int idproducto) {
        this.idproducto = idproducto;
    }

    public String getNombreProducto() {
        return nombreProducto;
    }

    public void setNombreProducto(String nombreProducto) {
        this.nombreProducto = nombreProducto;
    }

    public String getImagen() {
        return imagen;
    }

    public void setImagen(String imagen) {
        this.imagen = imagen;
    }

    public float getPrecio() {
        return precio;
    }

    public void setPrecio(float precio) {
        this.precio = precio;
    }

    public int getCantidad() {
        return cantidad;
    }

    public void setCantidad(int cantidad) {
        this.cantidad = cantidad;
    }

    public float getMonto() {
        return monto;
    }

    public void setMonto(float monto) {
        this.monto = monto;
    }

    
 

   


 
   
   
   
   
}
