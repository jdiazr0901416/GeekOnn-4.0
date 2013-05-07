package com.geekonn.servlets;

import com.geekonn.security.Cifrar;
import com.geekonn.system.SentenciasSQL;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.ResultSet;
import java.sql.SQLException;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


/**
 *
 * @author Bouchan
 */
public class InicioSesion extends HttpServlet {
    SentenciasSQL sentenciasSQL;
    Cifrar nuevoCifado = new Cifrar();

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
           
           
             HttpSession respuesta = request.getSession(true);
     /*   String username = request.getParameter("username");
        String Contraseña1 = request.getParameter("Contrasena");
        ResultSet rs;*/
        
        //MLUS d = new MLUS();
        //Validador v = new Validador();
        //REC r = new REC();
        
        String correoOUsuario = request.getParameter("nombreUsuario");
        String password1 = request.getParameter("password");
        String password = nuevoCifado.encriptar(password1); 
        try {
        if (sentenciasSQL.comprobarCorreoOUsuarioYcontrasena(correoOUsuario, password)) {
                
                    //Significa que la cuenta si existe
                    //OBTENGO EL NOMBRE DEL USUARIO Y LO GUARDO EN UNA SESION
                    int idUsuario = sentenciasSQL.devolverIDUsuario(correoOUsuario);
                    String Username = sentenciasSQL.ObtenerUsernameSabiendoElid(idUsuario);
                    respuesta.setAttribute("sessionUsername", Username);
                    respuesta.setAttribute("sessionIdUsuario", idUsuario);
                    if(sentenciasSQL.comprobarSiEstaOnline(Username)){
                        String Username2 = "TEN CUIDADO ALGUIEN MAS YA ESTABA ONLINE CON TU USERNAME ANTES QUE TU";
                        respuesta.setAttribute("sessionUsername", Username2);
                    }else{
                        sentenciasSQL.ponerOnline(Username);
                    }          
                }else{
                    respuesta.setAttribute("error", "Tus Datos estan mal");
                }
            

            }catch (Exception e) {
                System.out.println("SQL exception. .-." + e.getMessage());
            }

       response.sendRedirect("Sesion.jsp");
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
