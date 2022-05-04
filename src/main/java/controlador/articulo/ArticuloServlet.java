
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
import modelo.bean.Producto;
import modelo.dao.ArticuloDAO;
import modelo.dao.CarritoDAO;
import modelo.dao.ProductoDAO;

@WebServlet(name = "ArticuloServlet", urlPatterns = {"/nosotros","/producto","/listaArticulo","/editarProducto",
"/listaConservas","/listaBebidas","/listaPiqueos","/listaRopa","/listaPan","/listaFruta","/listaLacteos","/listaLimpieza","/listaVino"})
public class ArticuloServlet extends HttpServlet {

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
            if(path.equals("/nosotros")){
                request.getRequestDispatcher("WEB-INF/nosotros.jsp").forward(request, response);
            }
            
            if(path.equals("/producto")){
               // request.getRequestDispatcher("WEB-INF/producto.jsp").forward(request, response);
            }
              //lista snacks          
            if(path.equals("/listaArticulo")){
                request.setAttribute("articulos", ProductoDAO.listarProductosPorCategoria(1));
                //redicrrecionar al jsp Articulos
                request.getRequestDispatcher("principal.jsp").forward(request, response);
            }
            
            if(path.equals("/listaBebidas")){
                request.setAttribute("articulos", ProductoDAO.listarProductosPorCategoria(2));
                //redicrrecionar al jsp Articulos
                request.getRequestDispatcher("principal.jsp").forward(request, response);
            }
            
            if(path.equals("/listaPiqueos")){
                request.setAttribute("articulos", ProductoDAO.listarProductosPorCategoria(4));
                //redicrrecionar al jsp Articulos
                request.getRequestDispatcher("principal.jsp").forward(request, response);
            }
            
            if(path.equals("/listaRopa")){
                request.setAttribute("articulos", ProductoDAO.listarProductosPorCategoria(3));
                //redicrrecionar al jsp Articulos
                request.getRequestDispatcher("principal.jsp").forward(request, response);
            }
            
            if(path.equals("/listaFruta")){
                request.setAttribute("articulos", ProductoDAO.listarProductosPorCategoria(5));
                //redicrrecionar al jsp Articulos
                request.getRequestDispatcher("principal.jsp").forward(request, response);
            }
            
            if(path.equals("/listaLimpieza")){
                request.setAttribute("articulos", ProductoDAO.listarProductosPorCategoria(6));
                //redicrrecionar al jsp Articulos
                request.getRequestDispatcher("principal.jsp").forward(request, response);
            }
            
            if(path.equals("/listaVino")){
                request.setAttribute("articulos", ProductoDAO.listarProductosPorCategoria(7));
                //redicrrecionar al jsp Articulos
                request.getRequestDispatcher("principal.jsp").forward(request, response);
            }
            
            if(path.equals("/listaPan")){
                request.setAttribute("articulos", ProductoDAO.listarProductosPorCategoria(8));
                //redicrrecionar al jsp Articulos
                request.getRequestDispatcher("principal.jsp").forward(request, response);
            }
            
            if(path.equals("/listaLacteos")){
                request.setAttribute("articulos", ProductoDAO.listarProductosPorCategoria(9));
                //redicrrecionar al jsp Articulos
                request.getRequestDispatcher("principal.jsp").forward(request, response);
            }
             
            if(path.equals("/editarProducto")){
                int codigo = Integer.parseInt(request.getParameter("id"));
               
                Producto prod = ProductoDAO.buscarArticuloID(codigo);
              //  int idproductoDeProducto = prod.getIdproducto();
              //  int numero = 6;
              Carrito car = CarritoDAO.buscarIDProductoCarrito(codigo);
                  int idproductoDeCarrito=-5;
               if(car!=null){
                 idproductoDeCarrito  = car.getIdproducto();
               }
                  
               //  int idproductoDeCarrito=5;
                int comparacion;
                //comparacion = 1 , no se puede comprar
                //comparacion = 2 , se puede comprar
                 if(idproductoDeCarrito==codigo){
                     comparacion=1; 
                 }
                 else{
                     comparacion=2;
                 }
                request.setAttribute("comparacion", comparacion);
                request.setAttribute("prod", prod );
                request.getRequestDispatcher("WEB-INF/producto.jsp").forward(request, response);
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
