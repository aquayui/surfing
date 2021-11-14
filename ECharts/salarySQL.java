package servlet;
import java.sql.*;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import servlet.recruitment;
public class salarySQL {
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
	public static ArrayList<recruitment> getDate(){
		Connection conn = null;
		ArrayList<recruitment> list=new ArrayList<recruitment>();
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
		     sql = "SELECT salary,job_type FROM recruitment_1";
		     ResultSet rs = stmt.executeQuery(sql);
		     Map map=new HashMap();
		     int mapKey=0;
		     String minS,maxS,salaryType;
		     double min,max,average;
		     String salary;
		     String job_type;
		     int mapkey=0;
		     java.text.DecimalFormat myformat=new java.text.DecimalFormat("#0.00");
		     while(rs.next()){
		    	 	//平均月薪处理
		    	 	salary  = rs.getString("salary");
		    	 	if(salary==null||salary.length()==0) {
	            		continue;
	            	}
		    	 	salaryType=salary.replaceAll("[^\\u4e00-\\u9fa5]", "");		    	 	
		    	 	//只保留万/月、千/月的数据
		    	 	if(salaryType.length()!=2) {
		    	 		continue;
		    	 	}
		    	 	if(salaryType.charAt(0)!='千'&&salaryType.charAt(0)!='万') {
		    	 		continue;
		    	 	}
		    	 	//空数据跳过
		    	 	
		    	 	
		    	 	minS="";
		    	 	maxS="";	
		    	 	//提取最大值、最小值
		    	 	for(int i=0;i<salary.length();i++) {
		    	 		
		    	 		if(salary.charAt(i)=='-') {
		    	 			for(int j=i+1;j<salary.length();j++) {
		    	 				
		    	 				if((salary.charAt(j)>='0'&&salary.charAt(j)<='9')||salary.charAt(j)=='.') {
				    	 			maxS=maxS+salary.charAt(j);
				    	 		}
		    	 				else {
		    	 					break;
		    	 				}
		    	 			}
		    	 			break;
		    	 		}
		    	 		if((salary.charAt(i)>='0'&&salary.charAt(i)<='9')||salary.charAt(i)=='.') {
		    	 			minS=minS+salary.charAt(i);
		    	 		}
		    	 	}
		    	 	min=getDouble(minS);
		    	 	max=getDouble(maxS);
		    	 	average=(min+max)/2;		
		    	 	
		    	 	average=Double.parseDouble(myformat.format(average));	            	
		    	 	//正则表达式替换掉非汉字字符
		    	 	if(salaryType.charAt(0)=='万') {
		    	 		average*=10;
		    	 	}
		    	 	if(average>50) {
		    	 		continue;
		    	 	}
		    	 	if(salaryType.charAt(1)=='年') {
		    	 		average/=12;
		    	 	}
		    	 	average=Double.parseDouble(myformat.format(average));
		    	 	//System.out.println(min+"+"+max+"=2*"+average);	
		    	 	job_type=rs.getString("job_type");
		    	 	if(map.containsValue(job_type)) {
	                	for(int i=0;i<list.size();i++) {
	                		if(list.get(i).job_type.equals(job_type)){
	                			list.get(i).averageSalary+=average;
	                			list.get(i).num+=1;
	                			break;
	                		}
	                	}
	                }
	                else {
	                	recruitment rec=new recruitment(job_type,average,1);
	                	list.add(rec);
	                	map.put(mapKey, job_type);
	                	mapKey++;
	                }
		    	 	
		    	 	//System.out.println(list.size());
	            }
		     	double aver;
		     	for(int i=0;i<list.size();i++) {
		        	aver=list.get(i).averageSalary/list.get(i).num;
		        	aver=Double.parseDouble(myformat.format(aver));
		        	list.get(i).averageSalary=aver;
		        }
		     	for(int i=0;i<list.size();i++) {
	    	 		System.out.println(list.get(i).job_type+","+list.get(i).averageSalary);
	    	 	}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
        return list;
	}
	public static double getDouble(String str) {
		double num;
		java.text.DecimalFormat myformat=new java.text.DecimalFormat("#0.00");
		num=Double.parseDouble(str);//装换为double类型
		num=Double.parseDouble(myformat.format(num));//保留2为小数		
		return num;
	}
}
