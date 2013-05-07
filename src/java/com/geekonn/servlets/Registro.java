package com.geekonn.servlets;
import com.geekonn.security.Cifrar;
import com.geekonn.system.*;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class Registro extends HttpServlet {

//Plantilla de servlet pensada para interacción con mySQL.

	private static final long serialVersionUID = 1L;
        SentenciasSQL sentenciasSQL;
        ResultSet resultSet;
        Statement statement; //java.sql.Statement
        Cifrar cifrar = new Cifrar();


	public Registro() {
		super();
	}


	public void destroy() {
		super.destroy(); 
	}

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
                try{
            String nombreCompleto=request.getParameter("nombreCompleto");
            String correoElectronico=request.getParameter("correoElectronico");
            String nombreUsuario=request.getParameter("nombreUsuario");
            String password1=request.getParameter("passwordRepetido");
            String password = cifrar.encriptar(password1);
            sentenciasSQL.registrarNuevoUsuario(nombreCompleto, correoElectronico, nombreUsuario, password);
            int idUsuario = sentenciasSQL.devolverIDUsuario(nombreUsuario);
            /*
             * Falta redireccionar a alguna pagina o servlet apartir de aqui
             */
            response.sendRedirect("./index.jsp");
            }catch(Exception e){
			System.out.println("SQL exception. .-." + e.getMessage());
		}
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