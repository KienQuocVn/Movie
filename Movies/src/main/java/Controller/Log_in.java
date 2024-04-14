package Controller;

import java.io.IOException;
import java.util.List;

import Dao.MovieDao;
import Dao.UserDAO;
import Model.Movie;
import Model.User;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet({ "/sign-in", "/Log_in/*" })
public class Log_in extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public Log_in() {
		super();
		// TODO Auto-generated constructor stub
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String uri = request.getRequestURI();
		System.out.println(uri);
		if (uri.contains("Log_in")) {
			try {
				request.getSession().setAttribute("user", null);
			} catch (Exception e) {
				// TODO: handle exception
			}
		}
		request.getRequestDispatcher("Views/Log-in.jsp").forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		String uri = request.getRequestURI();
		if (uri.contains("sign-in")) {
			this.doSignIn(request, response);
		}
	}

	private void doSignIn(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String method = req.getMethod();
		User user = null;
		if (method.equalsIgnoreCase("POST")) {
			String username = req.getParameter("username");
			String pw = req.getParameter("password");
			try {
				UserDAO dao = new UserDAO();
				user = dao.FindByID(username);
				System.out.println("user:" + user);
				if (!user.getPassword().trim().equals(pw)) {
					System.out.println("Sai mật khẩu!");
					req.setAttribute("typealert", "alertError()");
					req.getRequestDispatcher("Views/Log-in.jsp").forward(req, resp);
				} else {
					System.out.println("Đăng nhập thành công!");
					MovieDao moviedao = new MovieDao();
					List<Movie> movieVN = moviedao.FindAllVN();// Phim Việt Nam
					List<Movie> movieHQ = moviedao.FindAllHQ();// Phim Hàn Quốc
					List<Movie> movieTQ = moviedao.FindAllTQ();// Phim Trung Quốc
					List<Movie> movieMy = moviedao.FindAllMy();// Phim Mỹ
					List<Movie> movieTC = moviedao.FindAllTC();// Phim Tình Cảm
					List<Movie> movieTL = moviedao.FindAllTL();// Phim Tâm Lý
					List<Movie> movieHH = moviedao.FindAllHH();// Phim Hài Hước
					List<Movie> movieTOP6 = moviedao.FindTop6();// Top 6 Phim cao views
					List<Movie> movieTOPRand = moviedao.FindTopRand();// Random
					req.setAttribute("movieVN", movieVN);
					req.setAttribute("movieHQ", movieHQ);
					req.setAttribute("movieTQ", movieTQ);
					req.setAttribute("movieMy", movieMy);
					req.setAttribute("movieTOP6", movieTOP6);
					req.setAttribute("movieTOPRand", movieTOPRand);
					req.setAttribute("movieTC", movieTC);
					req.setAttribute("movieTL", movieTL);
					req.setAttribute("movieHH", movieHH);
					req.getSession().setAttribute("user", user);
					req.setAttribute("user", user);
					req.setAttribute("typealert", "alertSucces()");
					req.getRequestDispatcher("Views/home.jsp").forward(req, resp);
				}
			} catch (Exception e) {
				System.out.println("Sai tên đăng nhập!");
				System.out.println(e);
				req.setAttribute("typealert", "alertError()");
				req.getRequestDispatcher("Views/Log-in.jsp").forward(req, resp);
			}

		}

	}

//	private void doSignUp(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
//		String method = req.getMethod();
//		if (method.equalsIgnoreCase("POST")) {
//			try {
//				User user = new User();
//				BeanUtils.populate(user, req.getParameterMap());
//				UserDAO dao = new UserDAO();
//				dao.Insert(user);
//				req.setAttribute("message", "Đăng ký thành công!");
//			} catch (Exception e) {
//				req.setAttribute("message", "Lỗi đăng ký!");
//			}
//		}
//		req.getRequestDispatcher("Views/home.jsp").forward(req, resp);
//	}
}
