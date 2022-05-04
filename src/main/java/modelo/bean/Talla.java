
package modelo.bean;

public class Talla {
    
    int idtalla;
     String talla;

    public Talla(int idtalla, String talla) {
        this.idtalla = idtalla;
        this.talla = talla;
    }

    public int getIdtalla() {
        return idtalla;
    }

    public void setIdtalla(int idtalla) {
        this.idtalla = idtalla;
    }

    public String getTalla() {
        return talla;
    }

    public void setTalla(String talla) {
        this.talla = talla;
    }
     
     
    
}
