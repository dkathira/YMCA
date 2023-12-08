
import java.io.IOException;
import java.sql.SQLException;
import java.sql.Time;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class ProgramServlet
 */
@WebServlet("/Program")
public class ProgramServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private static final Object SNames = null;
	public ProgramDB pDB;

	public void init() {
		pDB = new ProgramDB();
	}

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public ProgramServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		String val = request.getParameter("deleteid");
		if (val != null) {

			int programid = Integer.parseInt(val);
			String message;
			try {
				pDB.deleteProgram(programid);
				message = "Program deleted Successfully";

			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
				message = "Program deletion not Successfull";
			}
			request.setAttribute("message", message);
			request.getRequestDispatcher("StaffLogin.jsp").forward(request, response);
		} else {
			String Day = null;
			ProgramDetails pDetails = new ProgramDetails();
			String pname = request.getParameter("programname");
			String sdat = request.getParameter("startdate");
			String edat = request.getParameter("enddate");
			String stime = request.getParameter("starttime");
			String etime = request.getParameter("endtime");
			String loc = request.getParameter("location");
			String lim = request.getParameter("limit");
			String mfee = request.getParameter("memberfee");
			String nfee = request.getParameter("nonmemberfee");
			String req = request.getParameter("requirements");

			String[] checkboxNamesList = request.getParameterValues("days");
			for (int i = 0; i < checkboxNamesList.length; i++) {

				if (checkboxNamesList[i] != null) {
					if (Day == null)
						Day = checkboxNamesList[i];
					else
						Day = Day.concat("," + checkboxNamesList[i]);
				}
			}
			pDetails.setProgramName(pname);
			pDetails.setStartDate(java.sql.Date.valueOf(sdat));
			pDetails.setEndDate(java.sql.Date.valueOf(edat));
			pDetails.setDays(Day);
			stime += ":00";
			pDetails.setstartTime(java.sql.Time.valueOf(stime));
			etime += ":00";
			pDetails.setendTime(java.sql.Time.valueOf(etime));
			pDetails.setLocation(loc);
			pDetails.setlimit(Integer.parseInt(lim));
			pDetails.setmemberFee(Integer.parseInt(mfee));
			pDetails.setnonmemberFee(Integer.parseInt(nfee));
			pDetails.setrequirements(req);
			try {
				if (pDB.addPRogramToDB(pDetails)) {
					request.setAttribute("UserID", "1_S");
					String message = "Program added Successfully";
					request.setAttribute("message", message);
					request.getRequestDispatcher("StaffLogin.jsp").forward(request, response);
					// response.sendRedirect("StaffLogin.jsp?message=" + URLEncoder.encode(message,
					// "UTF-8"));
				} else {
					/*
					 * 
					 * String message = "Program Added"; //
					 * request.getSession().setAttribute("message", message);
					 * response.sendRedirect("StaffLogin.jsp?message=" + URLEncoder.encode(message,
					 * "UTF-8")); //response.sendRedirect("index.jsp");
					 */

					request.setAttribute("UserID", "1_S");
					String message = "Program added Successfully";
					request.setAttribute("message", message);
					request.getRequestDispatcher("StaffLogin.jsp").forward(request, response);
				}

			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		doGet(request, response);
	}

}
