package com.cucl.connection;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.sql.DataSource;

import com.cucl.model.Teacher;

public class ConnectionManager {
	private static Connection connection = null;
	public boolean validate(Teacher teacher) throws ClassNotFoundException {
		boolean status = false;

		Class.forName("com.mysql.jdbc.Driver");

		try (Connection connection = DriverManager.getConnection(
				"jdbc:mysql://localhost:3306/controllab?useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC",
				"root", "");

				// Step 2:Create a statement using connection object
				PreparedStatement preparedStatement = connection
						.prepareStatement("select * from teacher where Te_Username = ? and Te_Password = ? ")) {
			preparedStatement.setString(1, teacher.getUsername());
			preparedStatement.setString(2, teacher.getPassword());

			System.out.println(preparedStatement);
			ResultSet rs = preparedStatement.executeQuery();
			status = rs.next();

		} catch (SQLException e) {
			// process sql exception
			printSQLException(e);
		}
		return status;
	}

	private void printSQLException(SQLException ex) {
		for (Throwable e : ex) {
			if (e instanceof SQLException) {
				e.printStackTrace(System.err);
				System.err.println("SQLState: " + ((SQLException) e).getSQLState());
				System.err.println("Error Code: " + ((SQLException) e).getErrorCode());
				System.err.println("Message: " + e.getMessage());
				Throwable t = ex.getCause();
				while (t != null) {
					System.out.println("Cause: " + t);
					t = t.getCause();
				}
			}
		}
	}
	public static Connection getConnection() throws NamingException, SQLException {
		System.out.print("dsad");
		DataSource ds = null;
		String jdbcName = "jdbc/ssbDS";	
		Context initContext = new InitialContext();	
		Context envContext = (Context) initContext.lookup("java:/comp/env");
		ds = (DataSource) envContext.lookup(jdbcName);	
		connection = ds.getConnection();
		if (connection == null) {
			System.out.println("not connec");
		}else {
			System.out.println(" connec");
		}
		return connection;
	}
public static void close(Connection cnnt, Statement stmt, PreparedStatement pstmt, ResultSet rs) {
    	
    	try {
            if (rs != null && !rs.isClosed()) {
            	rs.close();
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
    	
    	try {
            if (stmt != null && !stmt.isClosed()) {
            	stmt.close();
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
    	
    	try {
            if (pstmt != null && !pstmt.isClosed()) {
            	pstmt.close();
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
    	
    	try {
            if (cnnt != null && !cnnt.isClosed()) {
                cnnt.close();
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
}