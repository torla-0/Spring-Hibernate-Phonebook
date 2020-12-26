package com.practice.controller;

import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.propertyeditors.StringTrimmerEditor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.practice.entity.User;
import com.practice.service.UserService;

@Controller
@RequestMapping("/phone")
public class PhoneController {
	
	@Autowired
	private UserService userService;
	
	@GetMapping("/list")
	public String indexPage(Model model, @RequestParam(required = false, defaultValue = "1") Integer page) {
		
		List<User> users = userService.getUsers(page);
		model.addAttribute("users", users);
		model.addAttribute("page", page);
		return "list";
	}
	
	@GetMapping("/add")
	public String add(Model model) {
		
		User user = new User();
		model.addAttribute("user", user);
		return "add";
	}
	
	@PostMapping("/addUser")
	public String addUser( @ModelAttribute("user") @Valid User user, BindingResult bindingResult) {
		
		if(!bindingResult.hasErrors()) {	// if statement is reversed
			userService.saveUser(correctFirstLetter(user));
			return "redirect:/phone/list";
		}
		
		return "add";
	}

	@GetMapping("/update")
	public String update(@RequestParam("userId") int id, Model model) {

		User user = userService.getUser(id);	
		model.addAttribute("user", user);		
		return "add";
	}
	
	@GetMapping("/delete")
	public String delete(@RequestParam("userId") int id, Model model) {

		User user = userService.getUser(id);	
		model.addAttribute("user", user);		
		return "delete";
	}
	
	@PostMapping("/deleteUser")
	public String deleteUser(@ModelAttribute("user") User user) {

		userService.deleteUser(user);		
		return "redirect:/phone/list";
	}
	
	
	// Helper method
	// remove space from start and end
	@InitBinder
	public void initBinder(WebDataBinder dataBinder) {
		
		StringTrimmerEditor stringTrimmerEditor = new StringTrimmerEditor(true);
		
		dataBinder.registerCustomEditor(String.class, stringTrimmerEditor);
	}
	
	// Helper method
	// fix first letter
	public User correctFirstLetter(User user) {
		
		// Convert first letter to uppercase
		String firstLetter = user.getFirstName().substring(0, 1).toUpperCase();
		String firstLetterLastName = user.getLastName().substring(0, 1).toUpperCase();
		
		// replace first letter
		String newName = firstLetter.concat(user.getFirstName().substring(1, user.getFirstName().length()));
		String newLastName = firstLetterLastName.concat(user.getLastName().substring(1, user.getLastName().length()));
		
		// set new string
		user.setFirstName(newName);
		user.setLastName(newLastName);
		
		return user;
	}
	
}
