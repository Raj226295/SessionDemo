package registration;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

/**
 * Servlet implementation class RegisterServlet
 */
@WebServlet("/RegisterServlet")
public class RegisterServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public RegisterServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html");
        PrintWriter out = response.getWriter();

        String name = request.getParameter("name");
        String address = request.getParameter("address");
        String ageStr = request.getParameter("age");
        String gender = request.getParameter("gender");
        String city = request.getParameter("city");

        // Validation
        if(name == null || address == null || ageStr == null || gender == null || city == null ||
           name.isEmpty() || address.isEmpty() || ageStr.isEmpty() || city.isEmpty()) {
            out.print("All fields are mandatory");
            return;
        }

        int age;
        try {
            age = Integer.parseInt(ageStr);
        } catch(NumberFormatException e) {
            out.print("Age must be numeric");
            return;
        }

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/UserDB", "root", "root");

            PreparedStatement ps = con.prepareStatement(
                "INSERT INTO RegistrationUser(name,address,age,gender,city) VALUES(?,?,?,?,?)"
            );

            ps.setString(1, name);
            ps.setString(2, address);
            ps.setInt(3, age);
            ps.setString(4, gender);
            ps.setString(5, city);

            int i = ps.executeUpdate();
            if(i > 0) {
                out.print("Registration Successful");
            } else {
                out.print("Database Error");
            }

            con.close();
        } catch(Exception e) {
            out.print("Database Error: " + e.getMessage());
            e.printStackTrace();
        }
    
		
	}

}
