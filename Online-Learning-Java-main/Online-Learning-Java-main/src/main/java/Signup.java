import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;

@WebServlet("/Signup")
public class Signup extends HttpServlet {
    private static final long serialVersionUID = 1L;

    public Signup() {
        super();
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html");
        PrintWriter pw = response.getWriter();

        String name = request.getParameter("username");
        String email = request.getParameter("email");
        String password = request.getParameter("password");
        String gender = request.getParameter("gender");
        

        Connection con = null;
        PreparedStatement ps = null;
        ResultSet rs = null;

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://localhost:3310/online-learning", "root", "1234567890");

            // Check if email already exists
            String checkQuery = "SELECT * FROM signup WHERE email = ?";
            ps = con.prepareStatement(checkQuery);
            ps.setString(1, email);
            rs = ps.executeQuery();

            if (rs.next()) {
                // Email already exists
                pw.println("<script>alert('Email already registered! Please use a different email.'); window.location='Signup.jsp';</script>");
            } else {
                // Email is unique, insert new user
                String insertQuery = "INSERT INTO signup (username, email, password, gender) VALUES (?, ?, ?, ?)";
                ps = con.prepareStatement(insertQuery);
                ps.setString(1, name);
                ps.setString(2, email);
                ps.setString(3, password); // Consider hashing
                ps.setString(4, gender);

                int count = ps.executeUpdate();
                if (count == 1) {
                    response.sendRedirect("Login.jsp?message=success");
                } else {
                    pw.println("<h2>Registration failed. Please try again.</h2>");
                }
            }
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
            pw.println("<h2>Error: " + e.getMessage() + "</h2>");
        } finally {
            try {
                if (rs != null) rs.close();
                if (ps != null) ps.close();
                if (con != null) con.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
    }
}
