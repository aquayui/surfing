package user;

import java.io.IOException;
import java.sql.*;

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
@WebServlet("/preference")
public class preference extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public preference() {
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

		String degree=request.getParameter("degree");
		String predilection=request.getParameter("predilection");
		String company=request.getParameter("companyType");
		String location=request.getParameter("location");
		HttpSession session=request.getSession();
		String account=(String)session.getAttribute("account");
		int update;
		
		DBconnected db=new DBconnected();
		String sql = "UPDATE user_favor SET location='"+location+"', job_type='"+predilection+"', "
				+ "education='"+degree+"', company_type='"+company+"' where account='"+account+"'";
		update=db.executeUpdate(sql);
		
		JOptionPane.showMessageDialog(null,"     信息保存成功，返回主界面","成功保存",JOptionPane.WARNING_MESSAGE);
		response.sendRedirect("iframe.jsp");
		
	}
}