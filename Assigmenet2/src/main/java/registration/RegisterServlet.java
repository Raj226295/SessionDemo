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

@WebServlet("/RegisterServlet")
public class RegisterServlet extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        response.setContentType("text/html");
        PrintWriter out = response.getWriter();

        // Fetch form data
        String name = request.getParameter("name");
        String address = request.getParameter("address");
        String ageStr = request.getParameter("age");
        String gender = request.getParameter("gender");
        String city = request.getParameter("city");

        /* ---------- VALIDATION ---------- */
        if (name == null || name.trim().isEmpty() ||
            address == null || address.trim().isEmpty() ||
            ageStr == null || ageStr.trim().isEmpty() ||
            gender == null || gender.trim().isEmpty() ||
            city == null || city.trim().isEmpty()) {

            out.println("<h3 style='color:red'>All fields are mandatory!</h3>");
            return;
        }

        int age;
        try {
            age = Integer.parseInt(ageStr);
            if (age <= 0) {
                out.println("<h3 style='color:red'>Age must be greater than 0!</h3>");
                return;
            }
        } catch (NumberFormatException e) {
            out.println("<h3 style='color:red'>Age must be a number!</h3>");
            return;
        }

        /* ---------- JDBC CODE ---------- */
        Connection con = null;  // Declare here
        PreparedStatement ps = null;

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");

            // Change username/password as per your MySQL setup
            con = DriverManager.getConnection(
                    "jdbc:mysql://localhost:3306/UserDB?useSSL=false&allowPublicKeyRetrieval=true",
                    "root",
                    ""  // Empty if no password; otherwise put your MySQL password
            );

            String sql = "INSERT INTO RegistrationUser(name,address,age,gender,city) VALUES (?,?,?,?,?)";
            ps = con.prepareStatement(sql);

            ps.setString(1, name);
            ps.setString(2, address);
            ps.setInt(3, age);
            ps.setString(4, gender);
            ps.setString(5, city);

            int i = ps.executeUpdate();

            if (i > 0) {
                out.println("<h3 style='color:green'>Registration Successful!</h3>");
            } else {
                out.println("<h3 style='color:red'>Registration Failed!</h3>");
            }

        } catch (Exception e) {
            out.println("<h3 style='color:red'>Database Error: " + e.getMessage() + "</h3>");
        } finally {
            try {
                if (ps != null) ps.close();
                if (con != null) con.close();
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }
}
