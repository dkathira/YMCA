
import java.sql.Time;
import java.sql.Date;

public class ProgramDetails {
	private String programName;
	private Date startDate;
	private Date endDate;
	private String days;
	private Time startTime;
	private Time endTime;
	private String location;
	private int limit;
	private int memberFee;
	private int nonMemberFee;
	private String requirements;

	public String getProgramName() {
		return programName;
	}

	public void setProgramName(String ProgramName) {
		this.programName = ProgramName;
	}

	// Date
	public Date getStartDate() {
		return startDate;
	}

	public void setStartDate(Date date) {
		this.startDate = date;
	}

	public Date getEndDate() {
		return endDate;
	}

	public void setEndDate(Date EndDate) {
		this.endDate = EndDate;
	}

	// Days
	public String getDays() {
		return days;
	}

	public void setDays(String Days) {
		this.days = Days;
	}

	// Time
	public Time getstartTime() {
		return startTime;
	}

	public void setstartTime(Time startTime) {
		this.startTime = startTime;
	}

	public Time getendTime() {
		return endTime;
	}

	public void setendTime(Time endTime) {
		this.endTime = endTime;
	}

	// Location
	public String getLocation() {
		return location;
	}

	public void setLocation(String Location) {
		this.location = Location;
	}

	// Requirements
	public String getrequirements() {
		return requirements;
	}

	public void setrequirements(String requirements) {
		this.requirements = requirements;
	}

	// Limit
	public int getlimit() {
		return limit;
	}

	public void setlimit(int limit) {
		this.limit = limit;
	}

	// MemberFee
	public int getmemberFee() {
		return memberFee;
	}

	public void setmemberFee(int memberFee) {
		this.memberFee = memberFee;
	}

	// NonMemberFee
	public int getnonmemberFee() {
		return nonMemberFee;
	}

	public void setnonmemberFee(int nonMemberFee) {
		this.nonMemberFee = nonMemberFee;
	}

}
