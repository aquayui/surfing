package servlet;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

import servlet.information;
public class SQLconnect {
	public static Connection getConnection() {
		Connection conn = null;
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
		return conn;
	}
	public static ArrayList<information> getDate(){
		//Connection conn=getConnection();
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
//	                System.out.print("type: " + type);
//	                System.out.print(",averageSalary:" + averageSalary);
//	                System.out.print(",recruitNum:" + recruitNum);               
	                System.out.print("\n");
	            }
		     
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}       
		return list;
	}
}
