package user;

import java.io.IOException;
import java.sql.*;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.swing.JOptionPane;

import DBconnected.DBconnected;


/**
 * Servlet implementation class loginservlet
 */
@WebServlet("/register")
public class register extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public register() {
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
		String username=request.getParameter("username");
		String nickname=request.getParameter("name");
		String passwd=request.getParameter("password");
		String repeat=request.getParameter("repeat");
		
		DBconnected db=new DBconnected();
		String sql = "SELECT * FROM users where account='" + username + "'";
		ResultSet rs=null;
		
		rs=db.executeQuery(sql);
		try {
			if(rs.next()) {
				JOptionPane.showMessageDialog(null,"用户名重复","注册失败",JOptionPane.WARNING_MESSAGE);
				response.sendRedirect("UserSignUp.jsp");
			}
			else if(!repeat.equals(passwd)) {
				JOptionPane.showMessageDialog(null,"密码不一致，请重新输入","注册失败",JOptionPane.WARNING_MESSAGE);
				response.sendRedirect("UserSignUp.jsp");
			}
			else {
				sql = "INSERT INTO users(account,passwd,nickname) Value('"+username+"','"+passwd+"','"+nickname+"')";
				db.executeUpdate(sql);
				JOptionPane.showMessageDialog(null,"注册成功，返回登录界面","注册成功",JOptionPane.WARNING_MESSAGE);
				response.sendRedirect("login.jsp");
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
			
	}
		
	

}