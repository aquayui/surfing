package servlet;

import java.sql.*;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

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
		     Map map=new HashMap();
		     int mapKey=0;
		     while(rs.next()){
		    	 	
	            	String type = rs.getString("type");
	                double averageSalary  = rs.getDouble("averageSalary");
	                int recruitNum  = rs.getInt("recruitNum");
	                int num=1;
	                
	                if(map.containsValue(type)) {
	                	for(int i=0;i<list.size();i++) {
	                		if(list.get(i).type.equals(type)) {
	                			list.get(i).setAverageSalary(list.get(i).getAverageSalary()+averageSalary);
	                			list.get(i).setRecruitNum(list.get(i).getRecruitNum()+recruitNum);
	                			list.get(i).setNum(list.get(i).getNum()+1);
	                			break;
	                		}
	                	}
	                }
	                else {
	                	information inf=new information(type,averageSalary,recruitNum,num);
	                	list.add(inf);
	                	map.put(mapKey, type);
	                	mapKey++;
	                }
	                System.out.println(list);
	                //System.out.println(inf);
//	                System.out.print("type: " + type);
//	                System.out.print(",averageSalary:" + averageSalary);
//	                System.out.print(",recruitNum:" + recruitNum);               
//	                System.out.print("\n");
	            }
		     
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
        for(int i=0;i<list.size();i++) {
        	list.get(i).setAverageSalary(list.get(i).getAverageSalary()/list.get(i).getNum());
        }
		return list;
	}
}
