package attendance;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/UpdateAttendanceServlet")
public class UpdateAttendanceServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String attID = request.getParameter("attID");
		String empID = request.getParameter("empID");
		String date = request.getParameter("date");
		String inTime = request.getParameter("inTime");
		String outTime = request.getParameter("outTime");
		String status = request.getParameter("status");
		
		boolean isTrue;
		
		isTrue = AttendanceDBUtil.updateAttendance(attID, empID, date, inTime, outTime, status);
		
		if(isTrue == true) {
			
			List<Attendance> attDetails = AttendanceDBUtil.getAttendance(empID);
			request.setAttribute("attDetails", attDetails);
			
			RequestDispatcher dis = request.getRequestDispatcher("Attaccount.jsp");
			dis.forward(request, response);
		}
		else {
			List<Attendance> attDetails = AttendanceDBUtil.getAttendance(attID);
			request.setAttribute("attDetails", attDetails);
			
			RequestDispatcher dis = request.getRequestDispatcher("UpdateAttendance.jsp");
			dis.forward(request, response);
		}
	}

}
