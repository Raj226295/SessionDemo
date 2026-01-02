package WelcomeServlet;


import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

@WebServlet("/WelcomeServlet")
public class WelcomeServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        response.setContentType("text/html");
        PrintWriter pw = response.getWriter();

        HttpSession session = request.getSession(false);

        if (session == null) {
            pw.println("Session expired <a href='index.jsp'>Login again</a>");
            return;
        }

        String username = (String) session.getAttribute("username");
        ArrayList<String> loginHistory =
                (ArrayList<String>) session.getAttribute("loginHistory");

        pw.println("<h2>Welcome, " + username + "</h2>");
        pw.println("<h3>Login History</h3>");

        if (loginHistory != null && !loginHistory.isEmpty()) {
            pw.println("<ul>");
            for (String time : loginHistory) {
                pw.println("<li>Login Time: " + time + "</li>");
            }
            pw.println("</ul>");
        } else {
            pw.println("<p>No login history</p>");
        }

        pw.println("<a href='LogOutServlet'>Logout</a>");
    }
}