package attendance;

public class Attendance {
	private int attID;
	private int empID;
    private String date;
    private String inTime;
    private String outTime;
    private String status;
	
    public Attendance(int attID, int empID, String date, String inTime, String outTime, String status) {
		super();
		this.attID = attID;
		this.empID = empID;
		this.date = date;
		this.inTime = inTime;
		this.outTime = outTime;
		this.status = status;
	}

	public int getAttID() {
		return attID;
	}

	public int getEmpID() {
		return empID;
	}

	public String getDate() {
		return date;
	}

	public String getInTime() {
		return inTime;
	}

	public String getOutTime() {
		return outTime;
	}

	public String getStatus() {
		return status;
	}
   
}
