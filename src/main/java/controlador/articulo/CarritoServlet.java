
package controlador.articulo;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import modelo.bean.Articulo;
import modelo.bean.Carrito;
import modelo.bean.Talla;
import modelo.dao.ArticuloDAO;
import modelo.dao.CarritoDAO;
import modelo.dao.TallaDAO;

@WebServlet(name = "CarritoServlet", urlPatterns = {"/nuevoProducto","/listaCarrito","/ireditarCarrito","/eliminarProducto",
                                                    "/insertarCarrito","/modificarCarrito","/pagarCarrito","/formasPago"})
public class CarritoServlet extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            //valor de urlPatterns
            String path=request.getServletPath();
            
          /*  if(path.equals("/nuevoProducto")){
                //request.setAttribute("carrito", new Carrito());
                request.getRequestDispatcher("principal.jsp").forward(request, response);
            }*/
            
            if(path.equals("/ireditarCarrito")){
            
           int idcarrito = Integer.parseInt(request.getParameter("id"));
     
       
       request.setAttribute("prod", CarritoDAO.buscarArticuloID(idcarrito));
       
request.getRequestDispatcher("WEB-INF/modificarProducto.jsp").forward(request, response);
              //  CarritoDAO.editarCarrito(cantidad, idcarrito);
                
//response.sendRedirect("listaCarrito");
            } 
            
              if(path.equals("/modificarCarrito")){
                int cantidad = Integer.parseInt(request.getParameter("txtcantidad"));
                int txtidCarrito = Integer.parseInt(request.getParameter("txtidCarrito"));
                float precio = Float.parseFloat(request.getParameter("txtPrecio"));
                
                float monto = precio*cantidad;
                CarritoDAO.editarCarrito(cantidad, monto, txtidCarrito);
                //invocar al servlet
                response.sendRedirect("listaCarrito");
            } 
            
            if(path.equals("/eliminarProducto")){
                int codigo = Integer.parseInt(request.getParameter("id"));
                CarritoDAO.eliminarCarrito(codigo);
                //invocar al servlet
                response.sendRedirect("listaCarrito");
            } 
            
            if(path.equals("/listaCarrito")){
                float montoTotal = CarritoDAO.sumarMonto();
                request.setAttribute("carritos", CarritoDAO.listar());
                request.setAttribute("montoTotal", montoTotal);
                request.getRequestDispatcher("WEB-INF/carrito.jsp").forward(request, response);
            } 
            
           if(path.equals("/insertarCarrito")){
             
         
          int idProducto = Integer.parseInt(request.getParameter("txtidarticulo"));
          String nombreProducto = request.getParameter("txtnombre");
          String imagen = request.getParameter("txtimg");
          float precio = Float.parseFloat(request.getParameter("txtprec"));
          int cantidad = Integer.parseInt(request.getParameter("txtcantidad"));
          float monto = cantidad * precio;
          
          
          Carrito car = new Carrito(idProducto, nombreProducto, imagen, precio, cantidad, monto);
          CarritoDAO.insertarCarrito(car);
        
          response.sendRedirect("listaArticulo");
            }
           
           if(path.equals("/pagarCarrito")){
               
               modelo.dao.CarritoDAO.agregarCarrito();
               request.getRequestDispatcher("Inicio.jsp").forward(request, response);
               
           }
           
           if(path.equals("/formasPago")){
               
               request.getRequestDispatcher("WEB-INF/Pagar.jsp").forward(request, response);
               
           }
           
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
