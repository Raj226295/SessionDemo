import java.io.File;
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.Part;
import java.util.Collection;

@WebServlet("/UpdateCourseServlet")
@MultipartConfig(
    fileSizeThreshold = 1024 * 1024 * 2,  // 2MB
    maxFileSize = 1024 * 1024 * 10,       // 10MB
    maxRequestSize = 1024 * 1024 * 50     // 50MB
)
public class UpdateCourseServlet extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int courseId = Integer.parseInt(request.getParameter("course_id"));
        String courseName = request.getParameter("course_name");
        int instructorId = Integer.parseInt(request.getParameter("instructor_id"));
        String description = request.getParameter("description");
        int studentsEnrolled = Integer.parseInt(request.getParameter("students_enrolled"));
        double price = Double.parseDouble(request.getParameter("course_price"));  // Read the price
        
        String imagePath = null;
        String oldImagePath = null;

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3310/online-learning", "root", "1234567890");

            String selectSQL = "SELECT course_image FROM courses WHERE course_id = ?";
            PreparedStatement selectStmt = conn.prepareStatement(selectSQL);
            selectStmt.setInt(1, courseId);
            
            ResultSet rs = selectStmt.executeQuery();
            if (rs.next()) {
                oldImagePath = rs.getString("course_image");
            }

            for (Part part : request.getParts()) {
                if (part.getName().equals("course_image") && part.getSize() > 0) {
                    imagePath = "images/courses/" + part.getSubmittedFileName();
                    part.write(getServletContext().getRealPath("") + File.separator + imagePath);
                }
            }

            if (imagePath == null) {
                imagePath = oldImagePath;
            }

            String updateSQL = "UPDATE courses SET course_name=?, instructor_id=?, description=?, students_enrolled=?, course_price=?, course_image=? WHERE course_id=?";
            PreparedStatement updateStmt = conn.prepareStatement(updateSQL);
            
            updateStmt.setString(1, courseName);
            updateStmt.setInt(2, instructorId);
            updateStmt.setString(3, description);
            updateStmt.setInt(4, studentsEnrolled);
            updateStmt.setDouble(5, price);
            updateStmt.setString(6, imagePath);
            updateStmt.setInt(7, courseId);

            updateStmt.executeUpdate();

            response.sendRedirect("Admin_courses.jsp");

        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
