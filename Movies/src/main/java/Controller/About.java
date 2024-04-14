package Controller;

import java.io.IOException;

import Model.User;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet({ "/Sign-in", "/Sign-up" })
public class About extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public About() {
		super();
		// TODO Auto-generated constructor stub
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String uri = request.getRequestURI();

		String lang = request.getParameter("lang");
		if (lang != null) {
			request.getSession().setAttribute("lang", lang);

		}
		if (uri.contains("Sign-up")) {
			User user = new User();
			String email = request.getParameter("email");
			user.setEmail(email);
			request.setAttribute("user", user);
			request.getRequestDispatcher("Views/sign-up.jsp").forward(request, response);
		}

		request.getRequestDispatcher("Views/TrangChu.jsp").forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		String uri = request.getRequestURI();
		System.out.println(uri);
		if (uri.contains("Sign-in")) {
			request.getRequestDispatcher("Views/Log-in.jsp").forward(request, response);
		}

	}

}
