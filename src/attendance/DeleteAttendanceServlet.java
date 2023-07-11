package attendance;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/DeleteAttendanceServlet")
public class DeleteAttendanceServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		PrintWriter out = response.getWriter();
		response.setContentType("text/html");
		
		String id = request.getParameter("attID");
		String empID = request.getParameter("empID");
		boolean isTrue;
		
		isTrue = AttendanceDBUtil.deleteAttendance(id);
		
		if (isTrue == true) {
			out.println("<script type='text/javascript'>");
			out.println("alert('Attendance Record is deleted successfully.');");
			out.println("location='Attaccount.jsp'");
			out.println("</script>");
			
			List<Attendance> attDetails = AttendanceDBUtil.getAttendance(empID);
			request.setAttribute("attDetails", attDetails);
			
			RequestDispatcher dis = request.getRequestDispatcher("Attaccount.jsp");
			dis.forward(request, response);
			
		
		}
		else {
			
			List<Attendance> attDetails = AttendanceDBUtil.getAttendance(id);
			request.setAttribute("attDetails", attDetails);
			
			RequestDispatcher dis = request.getRequestDispatcher("DeleteAttendance.jsp");
			dis.forward(request, response);
		}
	}

}
