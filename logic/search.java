package searchJob;

import java.io.IOException;
import java.sql.*;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.swing.JOptionPane;

import DBconnected.DBconnected;

/**
 * Servlet implementation class loginservlet
 */
@WebServlet("/search")
public class search extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public search() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
				//doGet(request, response);
		response.setContentType("text/html;charset=utf-8");
		String job=request.getParameter("search");
		HttpSession session=request.getSession();
		String account=(String)session.getAttribute("account");
		
		DBconnected db=new DBconnected();
		String sql = "SELECT * FROM recruitment_1 where job_name like '%"+job+"%'";
		ResultSet rs=null;
		rs=db.executeQuery(sql);
		String[][] list0=new String[6][10];
		int i=0;
		try {
			while(rs.next() && i<6) {
				
				list0[i][0]=(rs.getString("job_name"));
				list0[i][1]=(rs.getString("location"));
				list0[i][2]=(rs.getString("date"));
				list0[i][3]=(rs.getString("company"));
				list0[i][4]=(rs.getString("company_type"));
				list0[i][5]=(rs.getString("salary"));
				list0[i][6]=(rs.getString("education"));
				list0[i][7]=(rs.getString("experience"));
				list0[i][8]=(rs.getString("number"));
				list0[i][9]=(rs.getString("description"));
				i++;
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		request.setAttribute("result", list0);
		request.getRequestDispatcher("/glasscard.jsp").forward(request, response);
	}
}