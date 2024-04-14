package Filter;

import java.io.IOException;

import Utils.RRSharer;
import jakarta.servlet.DispatcherType;
import jakarta.servlet.FilterChain;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebFilter;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebFilter(filterName = "appFilter", urlPatterns = { "/*", "/Log_in" }, dispatcherTypes = DispatcherType.REQUEST)
public class AppFilter implements httpFilter {

	@Override
	public void doFilter(HttpServletRequest request, HttpServletResponse response, FilterChain chain)
			throws ServletException, IOException {
		System.out.println("AppFilter Running");
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		RRSharer.add(request, response);
		chain.doFilter(request, response);

	}
}
