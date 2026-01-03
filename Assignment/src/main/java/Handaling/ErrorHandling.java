package Handaling;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.io.PrintWriter;

@WebServlet("/ErrorHandling")
public class ErrorHandling extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        PrintWriter out = response.getWriter();
        response.setContentType("text/html");

        try {
            // Valid usage of setIntHeader
            response.setIntHeader("Valid-Integer-Header", 200);

            // Valid usage of setHeader
            response.setHeader("Valid-String-Header", "Success");

            // Simulated error scenario (null header name)
            response.setHeader(null, "InvalidHeader");

        } catch (IllegalArgumentException e) {
            out.println("<h3>Error: Invalid header name or value</h3>");
            out.println("<p>" + e.getMessage() + "</p>");

        } catch (Exception e) {
            out.println("<h3>Unexpected Error Occurred</h3>");
            out.println("<p>" + e.getMessage() + "</p>");
        }

        out.println("<p>Check server logs and response headers for details.</p>");
    }
}
