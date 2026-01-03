package Header;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

/**
 * Servlet implementation class IntegerHeader
 */
@WebServlet("/IntegerHeader")
public class IntegerHeader extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public IntegerHeader() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		//1. set integer header using setIntHeader
		response.setHeader("Custom-Integer-Header","ServletExample");
		
		//2.  (optional) set normal header using setHeader
		
		response.setHeader("Customer-String-Header","ServletExample" );
		
		//3.send response
		response.setContentType("text/html");
		PrintWriter out =response.getWriter();
		
		out.println("<html><body>");
		out.println("<h2>Header set succesfully</h2>");
		out.println("<p> check response header in brown DevTools</h2>");
		out.println("</body></html>");
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
