package session;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import java.io.IOException;

public class LoginServlet extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        // getParameter()
        String username = request.getParameter("username");
        String password = request.getParameter("password");

        // create session
        HttpSession session = request.getSession();
        session.setAttribute("username", username);

        // redirect to welcome servlet
        response.sendRedirect("WelcomeServlet");
    }
}
