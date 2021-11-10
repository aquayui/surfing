package LJudge;



import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.mysql.cj.Session;
import com.mysql.cj.protocol.Resultset;
import com.mysql.cj.xdevapi.Statement;

import DBconnected.DBconnected;


/**
 * Servlet implementation class loginservlet
 */
@WebServlet("/LJudge")
public class LJudge extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LJudge() {
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
        response.setContentType("text/html;charset=utf-8");//瑙ｅ喅涔辩爜
        PrintWriter out = response.getWriter();
                String username1=request.getParameter("username");
                String password1=request.getParameter("password");
                String identy=request.getParameter("identy");
                if(identy==null) {
                	out.print("<script>alert('璇烽�夋嫨韬唤');window.location='login.jsp'</script>");
                }
                HttpSession session = request.getSession(false);
                session.setAttribute("Sno", username1);
                if(username1=="")
                {

                	out.print("<script>alert('璐﹀彿涓虹┖');window.location='login.jsp'</script>");

                }
                else if(password1=="") {
                	out.print("<script>alert('瀵嗙爜涓虹┖');window.location='login.jsp'</script>");
                 }
                DBconnected db=new DBconnected();
                if(identy.equals("student"))
                {
                	String sql = "SELECT * FROM Student where Sno='" + username1 + "' and Spsd='" + password1 + "'";
                	session.setAttribute("id", "student");
                	ResultSet rs=null;
                	rs=db.executeQuery(sql);
                	try {
						if(rs.next())
						response.sendRedirect("StuFrame.jsp");
						else
						{
							out.print("<script>alert('璐﹀彿鎴栧瘑鐮侀敊璇�');window.location='login.jsp'</script>");
						}
						
					} catch (SQLException e) {
						e.printStackTrace();
                     }
                }
                if(identy.equals("manager"))
                {
                	String sql = "SELECT * FROM manager where Mno='" + username1 + "' and Mpsd='" + password1 + "'";
                	session.setAttribute("id", "manager");
                	ResultSet rs=null;
                	
                	rs=db.executeQuery(sql);
                	try {
						if(rs.next())
						response.sendRedirect("ManagerFrame.jsp");
						else
						{
							out.print("<script>alert('璐﹀彿鎴栧瘑鐮侀敊璇�');window.location='login.jsp'</script>");
						}
					} catch (SQLException e) {
						e.printStackTrace();
                     }
                }
            
        }
		
	

}
