package by.http.newsmanagement.controller.command.impl.localization;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import by.http.newsmanagement.controller.ParameterUrlController;
import by.http.newsmanagement.controller.command.Command;
import by.http.newsmanagement.service.ServiceException;

public class LocalizationUpdateNewsCommand implements Command{
	
	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response)
			throws IOException, ServletException, ServiceException {
		response.setContentType("text/html");
		request.getRequestDispatcher(ParameterUrlController.UPDATE_NEWS).forward(request, response);	
	}
}

