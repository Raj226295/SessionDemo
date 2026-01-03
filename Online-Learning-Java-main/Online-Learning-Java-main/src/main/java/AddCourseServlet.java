import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.nio.file.Paths;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.Part;

@WebServlet("/AddCourseServlet")
@MultipartConfig(fileSizeThreshold = 1024 * 1024 * 2,   // 2MB
                 maxFileSize = 1024 * 1024 * 10,         // 10MB
                 maxRequestSize = 1024 * 1024 * 50)      // 50MB
public class AddCourseServlet extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String courseName = request.getParameter("courseName");
        int instructorId = Integer.parseInt(request.getParameter("instructorId"));
        String description = request.getParameter("description");
        double price = Double.parseDouble(request.getParameter("price"));  // Add price field

        Part filePart = request.getPart("courseImage");
        String fileName = Paths.get(filePart.getSubmittedFileName()).getFileName().toString();
        
        String uploadDir = getServletContext().getRealPath("") + File.separator + "uploads";
        File uploadFolder = new File(uploadDir);
        if (!uploadFolder.exists()) uploadFolder.mkdir();
        
        String filePath = uploadDir + File.separator + fileName;
        filePart.write(filePath);

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3310/online-learning", "root", "1234567890");

            // Updated SQL query to include price
            String sql = "INSERT INTO courses (course_name, instructor_id, description, course_price, course_image) VALUES (?, ?, ?, ?, ?)";
            
            PreparedStatement stmt = conn.prepareStatement(sql);
            stmt.setString(1, courseName);
            stmt.setInt(2, instructorId);
            stmt.setString(3, description);
            stmt.setDouble(4, price);    // Set price
            stmt.setString(5, "uploads/" + fileName);

            stmt.executeUpdate();
            conn.close();
        } catch (Exception e) {
            e.printStackTrace();
        }

        response.sendRedirect("Admin_courses.jsp");
    }
}
