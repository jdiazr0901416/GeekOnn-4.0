package com.geekonn.servlets;

import com.geekonn.system.SentenciasSQL;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Bouchan
 */
@WebServlet(name = "LogOut", urlPatterns = {"/LogOut"})
public class LogOut extends HttpServlet {
    SentenciasSQL sentenciasSQL;
    /**
     * Processes requests for both HTTP
     * <code>GET</code> and
     * <code>POST</code> methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
       
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP
     * <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    public void doGet(HttpServletRequest request, HttpServletResponse response)throws ServletException, IOException {
		try {
			doStuff(request, response);
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

   public void doPost(HttpServletRequest request, HttpServletResponse response)throws ServletException, IOException {
		try {
			doStuff(request, response);
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
   
   public void doStuff(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException, SQLException{
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        HttpSession sesion = request.getSession(true);
       
        String Username= (String)sesion.getAttribute("sessionUsername");
        sentenciasSQL.ponerOffline(Username);
        //Cerrar sesion
        sesion.invalidate();
       
        //Redirecciono a index.jsp
        response.sendRedirect("index.jsp");
   }        
        public void init(ServletConfig config) throws ServletException {
		super.init(config);
		try{
			sentenciasSQL = new SentenciasSQL();
                        // Aquí se declaran cuantos DatabaseHandler objects se requieran.
		}catch(ClassNotFoundException e){
			System.out.println("Clase no encontrada" + e.getMessage());
		}catch(InstantiationException e){
			System.out.println("Objeto no creado" + e.getMessage());
		}catch(IllegalAccessException e){
			System.out.println("Acceso ilegal" + e.getMessage());
		}catch(SQLException e){
			System.out.println("SQL exception. .-." + e.getMessage());
		}
	}
}
