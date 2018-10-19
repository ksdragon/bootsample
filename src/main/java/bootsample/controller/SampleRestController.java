package bootsample.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

import bootsample.service.TaskService;

@RestController
public class SampleRestController {
	
	@GetMapping("/hello")
	public String hello() {
		return "Hello World!!!";	
	}
	
	@Autowired
	private TaskService taskService;
	
		
	@GetMapping("/all-tasks")
	public String allTasks() {
		return taskService.findAll().toString();
	}

}
