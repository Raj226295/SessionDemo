package TypeTest;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.io.PrintWriter;

@WebServlet("/ContentTypeTest")
public class ContentTypeTest extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        // a. HttpServletResponse object is obtained automatically

        // b. Attempt to set Content-Type using setIntHeader (wrong way)
        response.setIntHeader("Content-Type", 500);

        // c. Correctly set Content-Type using setHeader
        response.setHeader("Content-Type", "text/plain");

        // d. Send response
        PrintWriter out = response.getWriter();
        out.println("Testing Content-Type Header using setIntHeader and setHeader");
    }
}
