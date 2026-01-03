import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet("/Admin_servlet")
public class Admin_servlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    public Admin_servlet() {
        super();
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String email = request.getParameter("email");
        String password = request.getParameter("password");

        // Hardcoded admin credentials (should be stored securely in a real application)
        String adminEmail = "codehub123";
        String adminPassword = "123456789";

        if (email.equals(adminEmail) && password.equals(adminPassword)) {
            HttpSession session = request.getSession();
            session.setAttribute("admin", email);
            response.sendRedirect("Admin.jsp"); // Redirect to the admin dashboard
        } else {
            response.getWriter().println("<script>alert('Invalid email or password'); window.location='Admin_login.jsp';</script>");
        }
    }
}
