package com.cucl.servlet;

import java.io.IOException;
import java.sql.SQLException;

import javax.naming.NamingException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.cucl.add.addStudent;
import com.cucl.model.Student;
/**
 * Servlet implementation class createStudent
 */
@WebServlet("/createStudent")
public class createStudent extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
	
    public createStudent() {
        super();
        // TODO Auto-generated constructor stub
    }
    
	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		Student newStudent = new Student(
				request.getParameter("Username"),
				request.getParameter("Password"),
				request.getParameter("Firstname"),
				request.getParameter("Lastname"),
				request.getParameter("Section")
				);
		
		addStudent sc = new addStudent();
		try {
			sc.CreateStudent(newStudent);
		} catch (SQLException | NamingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
//		System.out.print(newStudent.getFirstname());
//		System.out.print(newStudent.getSection());
		
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
