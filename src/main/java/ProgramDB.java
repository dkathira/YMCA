
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class ProgramDB {
	public boolean addPRogramToDB(ProgramDetails pDetails) throws SQLException {
		boolean status = false;
		Connection connect = null;
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		connect = DriverManager.getConnection("jdbc:mysql://localhost:3306/ymca_program?user=root&password=root123");
		// the mysql insert statement
		String query = " insert into ymca_program.program (ProgramName,StartDate, EndDate,Days,StartTime,EndTime,Location,TotalCapacity,RemainingSlots,MemberFee,NonMemberFee,Requirements,ActiveStatus)"
				+ " values (?, ?, ?, ?, ?,?, ?, ?, ?, ?,?,?,?)";

		PreparedStatement pStatement = connect.prepareStatement(query);

		int active = 1;
		pStatement.setString(1, pDetails.getProgramName());
		pStatement.setDate(2, pDetails.getStartDate());
		pStatement.setDate(3, pDetails.getEndDate());
		pStatement.setString(4, pDetails.getDays());
		pStatement.setTime(5, pDetails.getstartTime());
		pStatement.setTime(6, pDetails.getendTime());
		pStatement.setString(7, pDetails.getLocation());
		pStatement.setInt(8, pDetails.getlimit());
		pStatement.setInt(9, pDetails.getlimit());
		pStatement.setInt(10, pDetails.getmemberFee());
		pStatement.setInt(11, pDetails.getnonmemberFee());
		pStatement.setString(12, pDetails.getrequirements());
		pStatement.setInt(13, active);

		System.out.println(pStatement);
		status = pStatement.execute();
		connect.close();
		return status;
	}

	@SuppressWarnings("null")
	public String[] retriveProgramNames() throws SQLException {
		String[] ProgramName = new String[20];
		Connection connect = null;
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		connect = DriverManager.getConnection("jdbc:mysql://localhost:3306/ymca_program?user=root&password=root123");
		PreparedStatement pStatement = connect.prepareStatement("select ProgramName from ymca_program.program");

		System.out.println(pStatement);
		ResultSet rSet = pStatement.executeQuery();
		int i = 0;
		while (rSet.next()) {
			// if(ProgramNames[i] == null)
			ProgramName[i++] = rSet.getString("ProgramName");
			// else
			// ProgramNames[i].concat(" "+rSet.getString("ProgramName"));
		}
		String[] ProgramNames = new String[i];
		for (int j = 0; j < i; j++)
			ProgramNames[j] = ProgramName[j];
		return ProgramNames;
	}

	public ProgramDetails retrivePrograms() throws SQLException {
		ProgramDetails pDetails = new ProgramDetails();
		Connection connect = null;
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		connect = DriverManager.getConnection("jdbc:mysql://localhost:3306/ymca_program?user=root&password=root123");
		PreparedStatement pStatement = connect.prepareStatement("select * from program");

		System.out.println(pStatement);
		ResultSet rSet = pStatement.executeQuery();
		rSet.next();
		return pDetails;
	}

	public void deleteProgram(int pid) throws SQLException {

		Connection connect = null;
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		int disable = 0;
		connect = DriverManager.getConnection("jdbc:mysql://localhost:3306/ymca_program?user=root&password=root123");
		PreparedStatement pStatement = connect
				.prepareStatement("UPDATE ymca_program.program SET ActiveStatus = ? WHERE ProgramID = ?");
		pStatement.setInt(1, disable);
		pStatement.setInt(2, pid);
		System.out.println(pStatement);
		pStatement.execute();

	}
}
