package attendance;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class AttendanceDBUtil {
	
	private static boolean isSuccess;
	private static Connection con = null;
	private static Statement stmt = null;
	private static ResultSet rs = null;
    
	public static List<Attendance> getAttendance(String empID) {
		
		ArrayList<Attendance> att = new ArrayList<>();
		
		try {
			
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			String sql = "select * from attendance where empID='"+empID+"'";
			rs = stmt.executeQuery(sql);
			
			while (rs.next()) {
				int attID = rs.getInt(1);
				int eID = rs.getInt(2);
				String date = rs.getString(3);
				String inTime = rs.getString(4);
				String outTime = rs.getString(5);
				String status = rs.getString(6);
				
				Attendance e = new Attendance(attID, eID, date, inTime, outTime, status);
				att.add(e);
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return att;
	}

	public static boolean insertAttendance(String empID, String date, String inTime, String outTime, String status) {
    
		int convId = Integer.parseInt(empID);
		
    	boolean isSuccess = false;
    	
    	try {
    		con = DBConnect.getConnection();
    		stmt = con.createStatement();
    	    String sql = "insert into attendance values (0,'"+convId+"','"+date+"','"+inTime+"','"+outTime+"', '"+status+"')";
    		int rs = stmt.executeUpdate(sql);
    		
    		if(rs > 0) {
    			isSuccess = true;
    		} else {
    			isSuccess = false;
    		}
    		
    	}
    	catch (Exception e) {
    		e.printStackTrace();
    	}
 	
    	return isSuccess;
    }
    
    public static boolean updateAttendance(String attID, String empID, String date, String inTime, String outTime, String status) {
    	
    	try {
    		
    		con = DBConnect.getConnection();
    		stmt = con.createStatement();
    		String sql = "update attendance set empID='"+empID+"',date='"+date+"',inTime='"+inTime+"',outTime='"+outTime+"',status='"+status+"'"
    				+ "where attID='"+attID+"'";
    		int rs = stmt.executeUpdate(sql);
    		
    		if(rs > 0) {
    			isSuccess = true;
    		}
    		else {
    			isSuccess = false;
    		}
    		
    	}
    	catch(Exception e) {
    		e.printStackTrace();
    	}
    	
    	return isSuccess;
    }
    
    public static boolean deleteAttendance(String attID) {
    	
    	int convId = Integer.parseInt(attID);
    	
    	try {
    		
    		con = DBConnect.getConnection();
    		stmt = con.createStatement();
    		String sql = "delete from attendance where attID='"+convId+"'";
    		int r = stmt.executeUpdate(sql);
    		
    		if (r > 0) {
    			isSuccess = true;
    		}
    		else {
    			isSuccess = false;
    		}
    		
    	}
    	catch (Exception e) {
    		e.printStackTrace();
    	}
    	
    	return isSuccess;
    }


}
