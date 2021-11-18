package servlet;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import servlet.date;
public class getDate {
	public static date getdate(String job_name) {
		Connection conn = null;
		date date = null;
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
			System.out.println("失败");
			e.printStackTrace();
		}
		Statement stmt = null;
		try {
			
			stmt = conn.createStatement();
			String sql;
			int []year;
			//统计工作年限
		    sql = "SELECT salary FROM recruitment_1 where job_name like '%"+job_name+"%' and experience ";
		    year=yearNum(stmt,sql,job_name);
		    		    
		    //统计月薪
		    int []salaryArray;
		    salaryArray=salaryNum(stmt,job_name);
		    
		    //统计学历要求
		    int []eduNum;
		    eduNum=eduNum(stmt,job_name);
		    
		    date=new date(job_name,year,salaryArray,eduNum);
		    
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return date;
	}
	public static int[] yearNum(Statement stmt,String sql,String job_name) {
		int []year=new int[7];
		String str;	
		ResultSet rs;
		String s[]=new String[7];
		s[0]="SELECT experience FROM recruitment_1 WHERE job_name like '%"+job_name+"%'";
		s[1]=sql+"like '%应届生%'";
		s[2]=sql+"REGEXP '1年|1-3|2'";
		s[3]=sql+"REGEXP '3年|3-4|3-5'";
		s[4]=sql+"REGEXP '5年|5-'";
		s[5]=sql+"REGEXP '10年以上'";
		s[6]=sql+"REGEXP '不限'";	
		try {
			for(int i=0;i<7;i++) {
				rs=stmt.executeQuery(s[i]);
				int k=1;
				while(rs.next()) {
					k++;
				}
				//rs.last();
			    year[i]=k;
			    //System.out.println(year[i]);
			}
			//System.out.println(year[6]);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	    
		return year;
	}
	public static int[] salaryNum(Statement stmt,String job_name){
		String minS,maxS,salaryType;
	    double min,max,average;
	    String salary;
	    java.text.DecimalFormat myformat=new java.text.DecimalFormat("#0.00");
	    String sql = "SELECT salary FROM recruitment_1 WHERE job_name like '%"+job_name+"%'";
	    ResultSet rs;
	    int []salaryArray=new int [6];
	    for(int i=0;i<6;i++)
	    	salaryArray[i]=0;
		try {
			rs = stmt.executeQuery(sql);
			
		    while(rs.next()) {
		    	salary  = rs.getString("salary");
	    	 	if(salary==null||salary.length()==0) {
	        			continue;
	        	}
	    	 	//正则表达式替换掉非汉字字符
	    	 	salaryType=salary.replaceAll("[^\\u4e00-\\u9fa5]", "");		    	 	
	    	 	//只保留万/月、千/月、万/年的数据
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
	    	 	
	    	 	if(salaryType.charAt(0)=='万') {
	    	 		average*=10;
	    	 	}
	    	 	
	    	 	if(salaryType.charAt(1)=='年') {
	    	 		average/=12;
	    	 	}
	    	 	average=Double.parseDouble(myformat.format(average));
	    	 	//if(average)
	    	 	salaryArray[0]+=1;
	    	 	//System.out.println(average);
	    	 	if(average<=10) {
	    	 		salaryArray[1]+=1;
	    	 	}
	    	 	if(average>10&&average<=20) {
	    	 		salaryArray[2]+=1;
	    	 	}
	    	 	if(average>20&&average<=35) {
	    	 		salaryArray[3]+=1;
	    	 	}
	    	 	if(average>35&&average<=50) {
	    	 		salaryArray[4]+=1;
	    	 	}
	    	 	if(average>50) {
	    	 		salaryArray[5]+=1;
	    	 	}
		    }
		    
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}	    
		return salaryArray;
	}
	public static int[] eduNum(Statement stmt,String job_name) {
		int[] eduNum=new int[8];
		String s[]=new String [8];
		s[0]="SELECT experience FROM recruitment_1 WHERE job_name like '%"+job_name+"%'";
		s[1]=s[0]+"and education like '%中专%'";
		s[2]=s[0]+"and education like '%高中%'";
		s[3]=s[0]+"and education like '%大专%'";
		s[4]=s[0]+"and education like '%本科%'";
		s[5]=s[0]+"and education like '%硕士%'";
		s[6]=s[0]+"and education like '%博士%'";
		s[7]=s[0]+"and education like '%不限%'";
		ResultSet rs;
		try {
			for(int i=0;i<8;i++) {
				rs=stmt.executeQuery(s[i]);
				int j=1;
				while(rs.next()) {
					j++;
				}
				//rs.last();
				eduNum[i]=j;
			    //System.out.println(eduNum[i]);
			}			
			//System.out.println(year[6]);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return eduNum;
	}
	public static double getDouble(String str) {
		double num;
		java.text.DecimalFormat myformat=new java.text.DecimalFormat("#0.00");
		num=Double.parseDouble(str);//装换为double类型
		num=Double.parseDouble(myformat.format(num));//保留2为小数		
		return num;
	}
}
