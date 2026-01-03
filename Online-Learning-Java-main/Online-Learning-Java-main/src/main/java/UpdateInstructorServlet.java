import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/UpdateInstructorServlet")
public class UpdateInstructorServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    // Handles GET requests to prevent 405 error
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.sendRedirect("Admin_instructors.jsp"); // Redirect to instructors page
    }

    // Handles POST requests for updating instructors
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int id = Integer.parseInt(request.getParameter("id"));
        String name = request.getParameter("name");
        String email = request.getParameter("email");
        int coursesAssigned = Integer.parseInt(request.getParameter("coursesAssigned"));

        Connection conn = null;
        PreparedStatement stmt = null;

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            conn = DriverManager.getConnection("jdbc:mysql://localhost:3310/online-learning", "root", "1234567890");
            String sql = "UPDATE instructors SET name=?, email=?, coursesAssigned=? WHERE id=?";
            stmt = conn.prepareStatement(sql);
            stmt.setString(1, name);
            stmt.setString(2, email);
            stmt.setInt(3, coursesAssigned);
            stmt.setInt(4, id);

            int rowsUpdated = stmt.executeUpdate();
            if (rowsUpdated > 0) {
                response.sendRedirect("Admin_instructors.jsp?message=Instructor+updated+successfully");
            } else {
                response.sendRedirect("edit_instructor.jsp?id=" + id + "&error=Update+failed");
            }
        } catch (Exception e) {
            e.printStackTrace();
            response.sendRedirect("edit_instructor.jsp?id=" + id + "&error=Exception+occurred");
        } finally {
            try {
                if (stmt != null) stmt.close();
                if (conn != null) conn.close();
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }
}
