package session;

import jakarta.servlet.*;
import jakarta.servlet.http.*;
import java.io.IOException;
import java.io.PrintWriter;

public class WelcomeServlet extends HttpServlet {

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        response.setContentType("text/html");
        PrintWriter out = response.getWriter();

        HttpSession session = request.getSession(false);

        if (session != null) {
            String user = (String) session.getAttribute("username");

            out.print("<h2>Welcome " + user + "</h2>");
            out.print("<p>Project Name: " + request.getContextPath() + "</p>");
            out.print("<a href='LogoutServlet'>Logout</a>");
        } else {
            response.sendRedirect("index.jsp");
        }
    }
}
