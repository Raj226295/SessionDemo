import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

@WebServlet("/UpdateProfileServlet")
public class UpdateProfileServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html");
        PrintWriter pw = response.getWriter();

        String newUsername = request.getParameter("username");
        String newPassword = request.getParameter("password");

        HttpSession session = request.getSession();
        String oldEmail = (String) session.getAttribute("email");

        Connection con = null;
        PreparedStatement ps = null;

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://localhost:3310/online-learning", "root", "1234567890");

            String sql = "UPDATE signup SET username=?, password=? WHERE email=?";
            ps = con.prepareStatement(sql);
            ps.setString(1, newUsername);
            ps.setString(2, newPassword);
            ps.setString(3, oldEmail);

            int rowsAffected = ps.executeUpdate();

            if (rowsAffected > 0) {
                session.setAttribute("username", newUsername);
                session.setAttribute("password", newPassword);
                response.sendRedirect("Profile.jsp");
            } else {
                pw.println("<h2>Error: Profile update failed. User not found.</h2>");
            }

        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
            pw.println("<h2>Error: " + e.getMessage() + "</h2>");
        } finally {
            try {
                if (ps != null) ps.close();
                if (con != null) con.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
    }
}
