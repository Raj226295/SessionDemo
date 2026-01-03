import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet("/UpdateAdminServlet")
public class UpdateAdminServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        String currentAdmin = (String) session.getAttribute("admin"); // Get logged-in admin email
        String newEmail = request.getParameter("newEmail");
        String newPassword = request.getParameter("newPassword");

        if (currentAdmin == null) {
            response.sendRedirect("Admin_login.jsp");
            return;
        }

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3310/online-learning", "root", "1234567890");

            // Update admin email and password
            String query = "UPDATE admin SET email=?, password=? WHERE email=?";
            PreparedStatement pstmt = con.prepareStatement(query);
            pstmt.setString(1, newEmail);
            pstmt.setString(2, newPassword); // ⚠️ Plain-text password (Not secure)
            pstmt.setString(3, currentAdmin);

            int updated = pstmt.executeUpdate();

            if (updated > 0) {
                session.setAttribute("admin", newEmail); // Update session email
                response.getWriter().println("<script>alert('Email and password updated successfully'); window.location='Admin.jsp';</script>");
            } else {
                response.getWriter().println("<script>alert('Error updating credentials'); window.location='Admin_setting.jsp';</script>");
            }

            con.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
