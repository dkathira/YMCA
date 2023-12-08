
import java.io.IOException;
import java.io.PrintWriter;
import java.net.URLEncoder;
import java.sql.SQLException;

import jakarta.servlet.ServletContext;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

/**
 * . * Servlet implementation class LoginServlet
 */
@WebServlet("/Login")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	public LoginDB lDB;

	public void init() {
		lDB = new LoginDB();
	}

	public LoginServlet() {
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
		ServletContext servletContext = getServletContext();
		String UserIDAttribute = (String) servletContext.getAttribute("uniqueusername");
		System.out.println("someAttribute value: " + UserIDAttribute);
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub

		String Username = request.getParameter("Username");
		String Password = request.getParameter("Password");
		LoginCredential lCred = new LoginCredential();
		PrintWriter out = response.getWriter();
		lCred.setUsername(Username);
		lCred.setPassword(Password);

		try {
			ServletContext servletContext = getServletContext();
			String id = lDB.validateCredentials(lCred);
			if (id != null) {
				// request.setAttribute("key_list",StNames);
				if (Username.startsWith("S")) {
					// response.sendRedirect("StaffLogin.jsp");
					String UserID = id;

					request.setAttribute("UserID", UserID);
					servletContext.setAttribute("uniqueusername", UserID);
					request.getRequestDispatcher("StaffLogin.jsp").forward(request, response);
				} else {
					String UserID = id;
					// response.sendRedirect("MemberLogin.jsp?UserID=" + URLEncoder.encode(UserID,
					// "UTF-8"));
					servletContext.setAttribute("uniqueusername", UserID);
					request.setAttribute("UserID", UserID);
					request.getRequestDispatcher("MemberLogin.jsp").forward(request, response);
				}
			} else {
				// request.setAttribute("errorMessage", "Invalid Credentials!");
				// request.getRequestDispatcher("/WEB-INF/index.jsp").forward(
				// request, response);
				out.println("Username or Password Incorrect");
				String message = "Invalid Credentials";
				// request.getSession().setAttribute("message", message);
				response.sendRedirect("index.jsp?message=" + URLEncoder.encode(message, "UTF-8"));
				// response.sendRedirect("index.jsp");
			}

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		doGet(request, response);
	}

}
