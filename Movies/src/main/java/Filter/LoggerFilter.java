package Filter;

import java.io.IOException;
import java.util.Date;

import Model.User;
import jakarta.servlet.FilterChain;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebFilter;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebFilter("/admin/*")
public class LoggerFilter implements httpFilter {

	@Override
	public void doFilter(HttpServletRequest request, HttpServletResponse response, FilterChain chain)
			throws ServletException, IOException {
		User user = (User) request.getSession().getAttribute("user");
		String uri = request.getRequestURI();
		Date time = new Date();
		chain.doFilter(request, response);
	}

}
