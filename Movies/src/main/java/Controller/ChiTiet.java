package Controller;

import java.io.IOException;

import Dao.MovieDao;
import Model.Movie;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class ChiTiet
 */
public class ChiTiet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public ChiTiet() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		MovieDao moviedao = new MovieDao();
		String uri = req.getRequestURI();
		if (uri.contains("moviede")) {
			try {
				String title = req.getParameter("namemovie");
				Movie mv = moviedao.FindByTitle(title);
				req.setAttribute("thinhanh", moviedao.findThinhHanh());
				req.setAttribute("moinhat", moviedao.FindTopRand());
				req.setAttribute("cothesethich", moviedao.FindTopRand());
				req.setAttribute("movie", mv);
				req.getRequestDispatcher("Views/chitiet.jsp").forward(req, resp);
			} catch (Exception e) {

			}
		}

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
