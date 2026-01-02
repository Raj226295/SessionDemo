package WelcomeServlet;


import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.ArrayList;

@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String userName = request.getParameter("uname");
        String password = request.getParameter("pwd");

        if ("admin".equals(userName) && "12345".equals(password)) {

            // current login time
            LocalDateTime now = LocalDateTime.now();
            DateTimeFormatter formatter =
                    DateTimeFormatter.ofPattern("yyyy-MM-dd HH:mm:ss");
            String currentLoginTime = now.format(formatter);

            // create/get session
            HttpSession session = request.getSession();

            // get login history
            ArrayList<String> loginHistory =
                    (ArrayList<String>) session.getAttribute("loginHistory");

            if (loginHistory == null) {
                loginHistory = new ArrayList<>();
            }

            loginHistory.add(currentLoginTime);

            // store data in session
            session.setAttribute("loginHistory", loginHistory);
            session.setAttribute("username", userName);

            // forward to welcome servlet
            request.getRequestDispatcher("WelcomeServlet")
                   .forward(request, response);

        } else {
            response.setContentType("text/html");
            response.getWriter().println(
                "Invalid username or password <a href='index.jsp'>Try again</a>"
            );
        }
    }
}
