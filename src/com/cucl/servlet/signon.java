package com.cucl.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.cucl.connection.ConnectionManager;
import com.cucl.model.Teacher;


/**
 * Servlet implementation class signon
 */
@WebServlet("/signon")
public class signon extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private ConnectionManager conn;

	public void init() {
		conn = new ConnectionManager();
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String username = request.getParameter("username");
		String password = request.getParameter("password");
		Teacher teacher = new Teacher();
		teacher.setUsername(username);
		teacher.setPassword(password);

		try {
			if (conn.validate(teacher)) {
				HttpSession session = request.getSession();
				session.setAttribute("username",username);
				response.sendRedirect("index.jsp");
			} else {
				HttpSession session = request.getSession();
				session.setAttribute("user", username);
				response.sendRedirect("login.jsp");
			}
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}
	}
}