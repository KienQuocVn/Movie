package Controller;

import java.io.IOException;

import org.apache.commons.beanutils.BeanUtils;

import Dao.UserDAO;
import Model.User;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet({ "/Sign-upSS" })
public class Sign_in extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public Sign_in() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		String uri = request.getRequestURI();
		String passold = request.getParameter("password");
		String passonew = request.getParameter("confirmPassword");
		UserDAO dao = new UserDAO();
		System.out.println(uri);
		if (uri.contains("Sign-upSS")) {
			if (passold.equals(passonew)) {
				try {
					User user = new User();
					// Đọc tham số vào các thuộc tính của bean staff
					user.setAdmin(false);
					user.setPassword(passonew);
					BeanUtils.populate(user, request.getParameterMap());
					dao.Insert(user);
					request.getRequestDispatcher("Views/Log-in.jsp").forward(request, response);
				} catch (Exception e) {
					System.out.println("them that bai");
					request.getRequestDispatcher("Views/sign-up.jsp").forward(request, response);
				}
			} else {
				System.out.println("them that bai");
				request.getRequestDispatcher("Views/sign-up.jsp").forward(request, response);
			}

		}

	}

}
