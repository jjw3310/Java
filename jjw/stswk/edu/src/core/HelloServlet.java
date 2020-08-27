package core;

import java.io.IOException;
import javax.servlet.ServletException;
import java.io.PrintWriter;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class HelloServlet
 */
@WebServlet("/HelloServlet")
public class HelloServlet extends HttpServlet {
	protected void doGet(HttpServletRequest request, 
			HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.setContentType("text/html; charset=utf-8");
		PrintWriter out=response.getWriter();
		out.println("<h3>안녕하세요?ssdfsd</h3>");
		out.close();
	}
}
