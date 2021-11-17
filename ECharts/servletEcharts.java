package servlet;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import servlet.date;
/**
 * Servlet implementation class servletEcharts
 */
@WebServlet("/servletEcharts")
public class servletEcharts extends HttpServlet {
	private static final long serialVersionUID = 1L;

    /**
     * Default constructor. 
     */
    public servletEcharts() {
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String job_name=new String(request.getParameter("job_name").getBytes("iso-8859-1"), "utf-8");  
		//String job_name="java";
		getDate getdate=new getDate();
		date date=getdate.getdate(job_name);
		int i;
		List<year> yearDate=new ArrayList<year>();
	    for(i=1;i<7;i++){
	    	year yDate=new year(date.getYearName()[i],date.getYear()[i]);
	    	yearDate.add(yDate);	    	
	    }	    
	    
	    List<salary> salaryDate=new ArrayList<salary>();
	    for(i=1;i<6;i++) {
	    	salary sDate=new salary(date.getSalaryName()[i],date.getSalary()[i]);
	    	salaryDate.add(sDate);	    	
	    }
	    
	    List<edu> eduDate=new ArrayList<edu>();
	    for(i=1;i<8;i++){
	    	edu eDate=new edu(date.getEduName()[i],date.getEducation()[i]);
	    	eduDate.add(eDate);	    	
	    }
	    request.setAttribute("job_name", job_name);
	    request.setAttribute("yearDate", yearDate);
	    request.setAttribute("salaryDate", salaryDate);
	    request.setAttribute("eduDate", eduDate);
		request.getRequestDispatcher("/bing.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}
}
