package Controller;

import java.io.IOException;
import java.util.Date;
import java.util.List;

import Dao.ActorDao;
import Dao.MovieDao;
import Dao.StoreMovieDao;
import Dao.StoreMovieDao2;
import Model.Movie;
import Model.StoreMovie2;
import Model.User;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet({ "/moviede", "/My_movie", "/moviesave", "/movieremove", "/movie_actor" })
public class Home extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public Home() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		String uri = req.getRequestURI();
		User user = (User) req.getSession().getAttribute("user");
		ActorDao actordao = new ActorDao();
		MovieDao moviedao = new MovieDao();
		StoreMovieDao stmoviedao = new StoreMovieDao();
		StoreMovieDao2 stmoviedao2 = new StoreMovieDao2();
		if (uri.contains("moviede")) {
			try {
				String title = req.getParameter("namemovie");
				Movie mv = moviedao.FindByTitle(title);
				req.setAttribute("thinhanh", moviedao.findThinhHanh());
				req.setAttribute("moinhat", moviedao.FindTopRand());
				req.setAttribute("cothesethich", moviedao.FindTopRand());
				req.setAttribute("movie", mv);
				req.setAttribute("Actors", actordao.FindActors(mv.getMovieId()));
				req.getRequestDispatcher("Views/chitiet.jsp").forward(req, resp);
			} catch (Exception e) {

			}
		}

		if (uri.contains("My_movie")) {
			List<Movie> mymovie = stmoviedao.FindBMovieByUser(user.getUserName());
			req.setAttribute("mymovie", mymovie);
			req.getRequestDispatcher("Views/MyMovie.jsp").forward(req, resp);
		}

		if (uri.contains("moviesave")) {
			try {
				String title = req.getParameter("namemovie");
				Movie mv = moviedao.FindByTitle(title);
				StoreMovie2 stm = new StoreMovie2();
				stm.setUserName(user.getUserName());
				stm.setMovieId(mv.getMovieId());
				stm.setBuyDate(new Date());
				stmoviedao2.Insert(stm);
				System.out.println("them thanh cong");
			} catch (Exception e) {
				System.out.println("them that bai");
				System.out.println(e);
			}

		}
		if (uri.contains("movieremove")) {
			try {
				String title = req.getParameter("namemovieremove");
				Movie mv = moviedao.FindByTitle(title);
				stmoviedao.Delete2(user.getUserName(), mv.getMovieId());
				List<Movie> mymovie = stmoviedao.FindBMovieByUser(user.getUserName());
				System.out.println("Xoa thanh cong");
				req.setAttribute("mymovie", mymovie);
				req.getRequestDispatcher("Views/MyMovie.jsp").forward(req, resp);

			} catch (Exception e) {
				System.out.println("Xoa that bai");
				System.out.println(e);
			}
		}

		if (uri.contains("movie_actor")) {
			try {
				String actorid = req.getParameter("actorid");
				System.out.println(actorid + moviedao.FindMoviebyactor(actorid));
				req.setAttribute("mymovie", moviedao.FindMoviebyactor(actorid));
				req.setAttribute("actor", actordao.FindByID(actorid));
				req.getRequestDispatcher("Views/Actor-Movie.jsp").forward(req, resp);

			} catch (Exception e) {
				System.out.println("Xoa that bai");
				System.out.println(e);
			}
		}

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

		req.getRequestDispatcher("Views/home.jsp").forward(req, resp);

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
