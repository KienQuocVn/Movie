package Filter;

import java.io.IOException;

import jakarta.servlet.FilterChain;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

public class I18nFilter implements httpFilter {

	@Override
	public void doFilter(HttpServletRequest request, HttpServletResponse response, FilterChain chain)
			throws ServletException, IOException {
		String lang = request.getParameter("lang");
		if (lang != null) {
			request.getSession().setAttribute("lang", lang);

		}
		System.out.println(lang);
		System.out.println("Cc");
		chain.doFilter(request, response);
	}

}
