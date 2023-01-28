package com.ctrl;

import java.util.Date;
import java.util.List;

import javax.servlet.ServletContext;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.entities.Todo;




@Controller
public class HomeCtrl {

	@Autowired
	ServletContext ctx;
	
	
	@RequestMapping("/home")
	public String home(Model m) {
		
		String home= "home";
		m.addAttribute("page",home);
		
		List<Todo> list = (List<Todo>) ctx.getAttribute("list");
		m.addAttribute("todos",list);
		return "home";
	}
	
	@RequestMapping("/add")
	public String addToDo(Model m) {
		
		Todo t =new Todo();
		m.addAttribute("todo",t);
		String add= "add";
		m.addAttribute("page",add);
		return "home";
	}
	
	@RequestMapping(value="/saveTodo" ,method=RequestMethod.POST)
	public String saveTodo(@ModelAttribute("todo") Todo t , Model m) {
		
		
		t.setCreationDate(new Date());
		List<Todo> list =(List<Todo>)ctx.getAttribute("list");
		list.add(t);
		m.addAttribute("msg", "Successfully Added");
		System.out.println(t);
		return "home";
	}


}
