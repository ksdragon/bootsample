package bootsample.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

import bootsample.service.TaskService;

@Controller
public class MainController {
	
//	@Autowired
//	private TaskService taskService;
	
	@GetMapping("/")
	public String home() {		
		return "index";
	}
	
	
//	@GetMapping("/all-tasks")
//	public String allTasks() {
//		return taskService.findAll().toString();
//	}
}
