
package controlador.articulo;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import modelo.bean.Usuario;
import modelo.dao.UsuarioDAO;

/**
 *
 * @author Alfonso
 */
@WebServlet(name = "LoginServlet", urlPatterns = {"/LoginServlet","/log","/registrarse","/previousuario","/cerrarSesion"})
public class LoginServlet extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
          
            String path=request.getServletPath();
            
            if(path.equals("/log")){
                
              String usuario= request.getParameter("txtusuario");
              String contra = request.getParameter("txtcontra");
                
                /*String usuario= "elcacas";
                String contra = "123";*/
                
               Usuario usu = UsuarioDAO.ObtenerUsuario(usuario,contra);
                
                if(usu!=null){
                    //if(contra==usu.getNombre()){
                  request.getSession().setAttribute("xusuario", usu);
                  request.getRequestDispatcher("Inicio.jsp").forward(request, response);
                   
                    }
                    else{
                    request.setAttribute("mensaje", "Usuario y/o password incorrecto");
                    
                     request.getRequestDispatcher("login.jsp").forward(request, response);
                     
                        // 
                    }
                
                
            }
            
            if(path.equals("/cerrarSesion")){
                request.getSession().invalidate();
                request.getRequestDispatcher("login.jsp").forward(request, response);
            }
            
            if(path.equals("/registrarse")){
                
                
                String usuario = request.getParameter("txtusuario");
                String nombre = request.getParameter("txtnombre");
                String contra = request.getParameter("txtcontra");
                Usuario us = new Usuario(usuario, nombre,contra);
                
                UsuarioDAO.InsertarUsuario(us);
                
                  request.getRequestDispatcher("login.jsp").forward(request, response);
 
                
            }
            
            
            if(path.equals("/previousuario")){
                String usuario = request.getParameter("usuario");
                
                Usuario usu = UsuarioDAO.ObtenerUsuarioporUsuario(usuario);
                
                if(usu!=null){
                    out.println("<input type='text' id='txtprevio' hidden=\"\" value='");
                    out.println(usuario+"'>");
                }else{
                    out.println("<input type='text' id='txtprevio' hidden=\"\" value=''>");
                }
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
