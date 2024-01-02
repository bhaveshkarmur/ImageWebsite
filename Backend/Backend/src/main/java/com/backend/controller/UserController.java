package com.backend.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.backend.model.user.USerCollection;
import com.backend.model.user.User;
import com.backend.service.UserService;

@RestController
//@CrossOrigin("*")
public class UserController {

	@Autowired
	UserService userService;
	//@RequestParam("userName") String userName,@RequestParam("email") String email,@RequestParam("password") String password
	@PostMapping("/saveUser")
	public User saveUser(@RequestBody User user ) {
//		System.out.println(userName+"   :::::::: "+email+" ::::::: "+password);
		System.out.println(user.getUname()+"   :::::::: "+user.getEmail()+" ::::::: "+user.getPassword());
		
		return userService.saveUser(user.getUname(), user.getEmail(), user.getPassword());
	}
	
	@PostMapping("/addCollection")
	public void addCollection(@RequestParam("name") String userName,@RequestParam("id") long userId, @RequestParam("collectionName") List<String> collections,@RequestParam("image") String path) {
		System.out.println(userName+" :::: "+userId+" ::::: "+collections+" :::::"+path);
		
		userService.addCollections(userId, userName, collections, path);
	}
	
	@GetMapping("/getCollectionList/{id}")
	public List<String> getAllCollections(@PathVariable long id){
		return userService.getAllCollections(id);
	}

	@GetMapping("/allCollection/{id}")
	public Map<String, List<String>> getCollections(@PathVariable long id) {
	  
	    return userService.getCollections(id);
	}
	
	@PostMapping("/signUp")
	public User signup(@RequestBody User user) {
		System.out.println(userService.Signup(user.getEmail(), user.getPassword()));
		return userService.Signup(user.getEmail(), user.getPassword());
	}

}
