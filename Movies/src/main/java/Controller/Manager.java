package Controller;

import java.io.IOException;
import java.util.List;

import org.apache.commons.beanutils.BeanUtils;

import Dao.ActorDao;
import Dao.MovieDao;
import Dao.UserDAO;
import Model.Actor;
import Model.Movie;
import Model.User;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@MultipartConfig
@WebServlet({ "/user", "/actor", "/movie", "/genres", "/movieactor", "/moviegenres", "/storemovie", "/CreateUser",
		"/DeleteUser", "/EditUser", "/UpdateUser", "/ResetUser", "/CreateActor", "/DeleteActor", "/EditActor",
		"/UpdateActor", "/ResetActor", "/CreateMovie", "/DeleteMovie", "/EditMovie", "/UpdateMovie", "/ResetMovie" })
public class Manager extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public Manager() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String uri = request.getRequestURI();
		if (uri.contains("user")) {
			UserDAO dao = new UserDAO();
			List<User> list = dao.FindAll();

			request.setAttribute("user", list);
			request.setAttribute("view", "MaN-User.jsp");
		}
		if (uri.contains("actor")) {
			ActorDao dao = new ActorDao();
			List<Actor> list = dao.FindAll();

			request.setAttribute("actor", list);
			request.setAttribute("view", "MaN-Actor.jsp");
		}
		if (uri.contains("movie")) {
			MovieDao dao = new MovieDao();
			List<Movie> list = dao.FindAll();

			request.setAttribute("movie", list);
			request.setAttribute("view", "MaN-Movie.jsp");

		}
		if (uri.contains("movieactor")) {

		}
		if (uri.contains("moviegenres")) {

		}
		if (uri.contains("storemovie")) {

		}

		if (uri.contains("EditUser")) {
			UserDAO dao = new UserDAO();
			List<User> list = dao.FindAll();
			User user = new User();
			String uriuser = request.getRequestURI();

			String iduser = request.getParameter("iduser");
			System.out.print(iduser);
			// Đọc tham số vào các thuộc tính của bean user
			user = dao.FindByID(iduser);
			// Chia sẻ với form

			request.setAttribute("Userform", user);
			request.setAttribute("user", list);
			request.setAttribute("view", "MaN-User.jsp");
			request.getRequestDispatcher("Views/Manager.jsp").forward(request, response);
			return;

		}

		// actor
		if (uri.contains("EditActor")) {

			ActorDao dao = new ActorDao();
			List<Actor> list = dao.FindAll();
			Actor actor = new Actor();
			String uriactor = request.getRequestURI();
//
			String iduser2 = request.getParameter("iduser2");
			System.out.print(iduser2);
			// Đọc tham số vào các thuộc tính của bean user
			actor = dao.FindByID(iduser2);
			System.out.println(actor.getFirstName());
			// Chia sẻ với form

			request.setAttribute("actorform", actor);
			request.setAttribute("actor", list);
			request.setAttribute("view", "MaN-Actor.jsp");
			request.getRequestDispatcher("Views/Manager.jsp").forward(request, response);
			return;

		}

		// movie
		if (uri.contains("EditMovie")) {

			MovieDao dao = new MovieDao();
			List<Movie> list = dao.FindAll();
			Movie movie = new Movie();
			String uriactor = request.getRequestURI();
//
			String iduser3 = request.getParameter("iduser3");
			System.out.print(iduser3);
			// Đọc tham số vào các thuộc tính của bean user
			movie = dao.FindByID(iduser3);
			// Chia sẻ với form

			request.setAttribute("movieform", movie);
			request.setAttribute("movie", list);
			request.setAttribute("view", "MaN-Movie.jsp");
			request.getRequestDispatcher("Views/Manager.jsp").forward(request, response);
			return;

		}

		request.getRequestDispatcher("Views/Manager.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		UserDAO dao = new UserDAO();
		List<Actor> listac;
		List<User> list = null;
		String uri = request.getRequestURI();
		if (uri.contains("CreateUser")) {
			try {
				User user = new User();
				// Đọc tham số vào các thuộc tính của bean user
				BeanUtils.populate(user, request.getParameterMap());
				dao.Insert(user);

				list = dao.FindAll();
				// Chia sẻ với form
				request.setAttribute("user", list);
			} catch (Exception e) {
				// TODO: handle exception
			}
		}
		if (uri.contains("DeleteUser")) {
			try {
				User user = new User();
				// Đọc tham số vào các thuộc tính của bean user
				BeanUtils.populate(user, request.getParameterMap());
				dao.Delete(user.getUserName());
				list = dao.FindAll();
				// Chia sẻ với form
				request.setAttribute("user", list);
			} catch (Exception e) {
				// TODO: handle exception
			}
		}

		if (uri.contains("UpdateUser")) {
			System.out.println("Vap update");
			try {
				User user = new User();
				// Đọc tham số vào các thuộc tính của bean user
				BeanUtils.populate(user, request.getParameterMap());
				System.out.println(user.getPassword());
				dao.Update(user);
				list = dao.FindAll();
				// Chia sẻ với form
				request.setAttribute("user", list);
			} catch (Exception e) {
				// TODO: handle exception;
			}
		}
		if (uri.contains("ResetUser")) {
			try {
				User user = new User();
				request.setAttribute("Userform", user);
				list = dao.FindAll();
				// Chia sẻ với form
				request.setAttribute("user", list);
			} catch (Exception e) {

			}
		}

		// movie

		request.setAttribute("view", "MaN-User.jsp");
		request.getRequestDispatcher("Views/Manager.jsp").forward(request, response);
	}

}
