package com.cucl.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.cucl.add.addTeacher;
import com.cucl.model.Teacher;

/**
 * @email Ramesh Fadatare
 */

@WebServlet("/addTeacher")
public class addTeacherServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;
    private addTeacher employeeDao;

    public void init() {
        employeeDao = new addTeacher();
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {

        String Username = request.getParameter("username");
        String Firstname = request.getParameter("firstname");
        String LastName = request.getParameter("lastname");
        String Password = request.getParameter("password");
		/* System.out.print(Username+""+Firstname+""+LastName+""+Password); */
        Teacher employee = new Teacher();
        employee.setUsername(Username);
        employee.setFirstname(Firstname);
        employee.setLastname(LastName);
        employee.setPassword(Password);

        try {
        	employeeDao.registerEmployee(employee);
        } catch (Exception e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }

        response.sendRedirect("editTeacher.jsp");
    }
}
