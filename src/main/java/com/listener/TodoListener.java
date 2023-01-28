package com.listener;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletContext;
import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;

import com.entities.Todo;

public class TodoListener implements ServletContextListener{

	@Override
	public void contextInitialized(ServletContextEvent sce) {
		
		System.out.println("Context Created");
		List<Todo> list = new ArrayList<Todo>();
		ServletContext ctx = sce.getServletContext();
		ctx.setAttribute("list", list);
	}

	@Override
	public void contextDestroyed(ServletContextEvent sce) {
		
		
		
	}

}
