import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.jspiders.cardekhowithservlet.jdbc.CarJDBC;
@WebServlet("/signup")
public class SignUp extends HttpServlet {

	private static final long serialVersionUID = 1L;

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		int id = Integer.parseInt(req.getParameter("id"));
		String name = req.getParameter("name");
		String email = req.getParameter("email");
		String password = req.getParameter("password");
		boolean res = CarJDBC.signUp(id, name, email, password);
		if (res) {
			req.setAttribute("message", "Signed up!!!");
		} else {
			req.setAttribute("message", "Error");
		}
		RequestDispatcher requestDispatcher = req.getRequestDispatcher("signup.jsp");
		requestDispatcher.forward(req, resp);
	}
}
