package servlet;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

public class test {

	public static void main(String[] args) {
		Connection conn = null;
		ArrayList<information> list=new ArrayList<information>();
	    try {
			final String JDBC_DRIVER = "com.mysql.cj.jdbc.Driver";  
		    final String DB_URL = "jdbc:mysql://1.116.201.187/surfing?useSSL=false&allowPublicKeyRetrieval=true&serverTimezone=UTC"; 
		    final String USER = "surfing";
		    final String PASS = "123456";
		    Class.forName(JDBC_DRIVER);
            conn = DriverManager.getConnection(DB_URL,USER,PASS);
		} catch (SQLException e) {
				// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			System.out.println("连接失败");
			e.printStackTrace();
		}
		Statement stmt = null;
        try {
			 stmt = conn.createStatement();
			 String sql;
		     sql = "SELECT * FROM testclr3";
		     ResultSet rs = stmt.executeQuery(sql);
		     
		     while(rs.next()){
		    	 	
	            	String type = rs.getString("type");
	                double averageSalary  = rs.getDouble("averageSalary");
	                int recruitNum  = rs.getInt("recruitNum");
	                information inf=new information(type,averageSalary,recruitNum);
	                list.add(inf);
	                
	                System.out.print("type: " + inf.type);
	                System.out.print(",averageSalary:" + inf.averageSalary);
	                System.out.print(",recruitNum:" + inf.recruitNum);               
	                System.out.print("\n");
	            }
		     
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}       

	}

}
