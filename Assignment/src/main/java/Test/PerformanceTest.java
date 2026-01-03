package Test;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.io.PrintWriter;

@WebServlet("/PerformanceTest")
public class PerformanceTest extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        long startTime = System.currentTimeMillis(); // Start time

        // ---- Using setIntHeader ----
        response.setIntHeader("Response-Count", 100);

        // ---- Using setHeader ----
        response.setHeader("Response-Type", "Performance-Test");

        response.setContentType("text/html");
        PrintWriter out = response.getWriter();

        // Generate large response
        out.println("<html><body>");
        out.println("<h2>Performance Test Page</h2>");

        for (int i = 1; i <= 5000; i++) {
            out.println("<p>This is line number " + i + "</p>");
        }

        out.println("</body></html>");

        long endTime = System.currentTimeMillis(); // End time
        long timeTaken = endTime - startTime;

        // Display performance result
        out.println("<p>Time Taken (ms): " + timeTaken + "</p>");
    }
}
