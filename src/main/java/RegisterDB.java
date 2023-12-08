
import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class RegisterDB {
	public boolean checkConflict(int uid, int pid) throws SQLException {
		boolean status = false;
		Connection connect = null;
		int slots = 0;
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		connect = DriverManager.getConnection("jdbc:mysql://localhost:3306/ymca_program?user=root&password=root123");
		String query = "{ CALL GETCONFLICTCOUNT(?,?,?) }";

		CallableStatement cstmt = connect.prepareCall(query);
		cstmt.setInt(1, uid);
		cstmt.setInt(2, pid);
		cstmt.registerOutParameter(3, java.sql.Types.BOOLEAN);
		cstmt.execute();
		boolean result = cstmt.getBoolean(3);
		System.out.print("Status: " + cstmt.getBoolean(3));
		if (result == false) {
			String insertQ2 = " select RemainingSlots from ymca_program.program where ProgramID = " + pid;
			PreparedStatement pStatement2 = connect.prepareStatement(insertQ2);
			System.out.println(pStatement2);
			ResultSet rSet = pStatement2.executeQuery();
			while (rSet.next()) {
				slots = rSet.getInt("RemainingSlots");

			}
			if (slots == 0) {
				result = true;
			}

			else {
				String insertQ = " insert into ymca_program.joined_programs (UserID,ProgramID)" + " values (?, ?)";

				PreparedStatement pStatement = connect.prepareStatement(insertQ);

				pStatement.setInt(1, uid);
				pStatement.setInt(2, pid);
				System.out.println(pStatement);
				status = pStatement.execute();

				slots = slots - 1;
				String insertQ3 = " UPDATE ymca_program.program SET RemainingSlots = " + slots + " where ProgramID ="
						+ pid;
				PreparedStatement pStatement3 = connect.prepareStatement(insertQ3);
				System.out.println(pStatement3);
				status = pStatement3.execute();
			}
			connect.close();
		}
		return result;

	}
}
