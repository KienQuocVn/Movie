package Filter;

import java.io.IOException;

import Model.User;
import jakarta.servlet.FilterChain;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebFilter;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebFilter(filterName = "AuthFilter", urlPatterns = { "/Manager/*", "/User_Servletr/*", "/User_Servlet", "/UserSe/*" })
public class AuthFilter implements httpFilter {

	@Override
	public void doFilter(HttpServletRequest request, HttpServletResponse response, FilterChain chain)
			throws ServletException, IOException {
		User user = (User) request.getSession().getAttribute("user");
		String uri = request.getRequestURI();
		String error = "";
		if (user == null) {
			error = response.encodeURL("Vui long dang nhap lai");
		} else if (!user.isAdmin() && uri.contains("Manager")) {
			request.getSession().setAttribute("user", null);
			error = response.encodeURL("Vui long dang nhap lai voi vai tro adminn");
		}

		if (!error.isEmpty()) {
			request.getSession().setAttribute("securi", uri);
			response.sendRedirect("Log_in?error=" + response.encodeURL(error));
		} else {
			chain.doFilter(request, response);
			request.getSession().setMaxInactiveInterval(60);
		}

	}
}
