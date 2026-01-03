import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import jakarta.servlet.http.Cookie;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

@WebServlet("/Login")
public class Login extends HttpServlet {
    private static final long serialVersionUID = 1L;

    public Login() {
        super();
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html");
        PrintWriter pw = response.getWriter();

        String email = request.getParameter("email");
        String password = request.getParameter("password");

        Connection con = null;
        PreparedStatement ps = null;
        ResultSet rs = null;

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://localhost:3310/online-learning", "root", "1234567890");

            String query = "SELECT * FROM signup WHERE email = ? AND password = ?";
            ps = con.prepareStatement(query);
            ps.setString(1, email);
            ps.setString(2, password);
            rs = ps.executeQuery();

            if (rs.next()) {
                // Retrieve user details from the result set
                String username = rs.getString("username");
                String userEmail = rs.getString("email");
                String userPassword = rs.getString("password");

                // Store the details in session
                HttpSession session = request.getSession();
                session.setAttribute("username", username);
                session.setAttribute("email", userEmail);
                session.setAttribute("password", userPassword);

                // Create a cookie for session persistence
                Cookie userCookie = new Cookie("user", userEmail);
                userCookie.setMaxAge(60 * 60 * 24 * 7); // Cookie valid for 7 days
                response.addCookie(userCookie);

                response.sendRedirect("Home2.jsp"); // Redirect to profile page
            } else {
                pw.println("<script>alert('Invalid email or password'); window.location='Login.jsp';</script>");
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
