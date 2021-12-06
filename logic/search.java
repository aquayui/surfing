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
			request.setCharacterEncoding("UTF-8");
			String job=request.getParameter("search");
			HttpSession session=request.getSession();
			String account=(String)session.getAttribute("account");
			
			String location = new String();
			String job_type = new String();
			String degree = new String();
			String company_type = new String();
			
			DBconnected db=new DBconnected();
			String sql = "SELECT * FROM recruitment_1 where job_name like '%"+job+"%'";
			String sql2 = "SELECT * FROM user_favor where account='"+account+"'";
			ResultSet rs=null;
			ResultSet rs2=null;
			rs2=db.executeQuery(sql2);
			try {
				if(rs2.next()) {
					location=rs2.getString("location");
					job_type=rs2.getString("job_type");
					degree=rs2.getString("education");
					company_type=rs2.getString("company_type");
				}
			} catch (SQLException e) {
				e.printStackTrace();
			}
			String[][] list0=new String[60][10];
			int i=0;
			rs=db.executeQuery(sql);
			try {
				while(rs.next() && i<60) {
					if(location.length()>1 && rs.getString("location").length()>1 && !location.substring(0, 2).equals((rs.getString("location").substring(0, 2))) && !location.isEmpty())
						continue;
					if(!job_type.equals(rs.getString("job_class"))&&!job_type.isEmpty())
						continue;
					if(degree.length()>1 && rs.getString("location").length()>1 && !degree.substring(0, 2).equals((rs.getString("education")).substring(0, 2))&&!degree.isEmpty())
						continue;
					if(!company_type.equals(rs.getString("company_type"))&&!company_type.isEmpty())
						continue;
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
