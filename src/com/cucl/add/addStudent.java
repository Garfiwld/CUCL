package com.cucl.add;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import javax.naming.NamingException;

import com.cucl.connection.ConnectionManager;
import com.cucl.model.Student;

public class addStudent {
	
	public void CreateStudent(Student initStudent) throws SQLException, NamingException{
		int retval = 0;
		ResultSet rs = null;
		Connection cnnt = ConnectionManager.getConnection();
		String sql = "insert into student (St_Username, St_Firstname, St_Lastname, St_Password, St_section, St_Status) Values (?, ?, ?, ?, ?, ?)";
		PreparedStatement pstmt = cnnt.prepareStatement(sql);
		pstmt.setString(1, initStudent.getUsername());
		pstmt.setString(2, initStudent.getFirstname());
		pstmt.setString(3, initStudent.getLastname());
		pstmt.setString(4, initStudent.getPassword());
		pstmt.setString(5, initStudent.getSection());
		pstmt.setString(6, "Fist");
		retval = pstmt.executeUpdate();
//		if(rs.next()) {
//			user = new User();
//			user.setUserId(rs.getString("user_id"));			
//			user.setLoginId(rs.getString("login_id"));
//			user.setEmpId(rs.getString("emp_id"));
//			user.setFullName(rs.getString("fullname"));
//			user.setPassword(rs.getString("login_password"));
//			logger.debug("   found user "+ user.getFullName());
//			List<Role> roles = getRolesByUserId(user.getUserId());
//			user.setRoles(roles);			
//		}		
		ConnectionManager.close(cnnt, null, pstmt, rs);
		
	}
}
