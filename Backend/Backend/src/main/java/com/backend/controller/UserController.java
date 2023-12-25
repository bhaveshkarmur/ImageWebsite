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
@CrossOrigin(origins = "*")
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
//	
//	@GetMapping("/allCollection/{id}")
//	public Map<String,List<String>> getCOllections(@PathVariable long id){
//		List<USerCollection> allImage= userService.getCollections(id);
//		
//		Map<String,List<String>> imageByCollections=new HashMap<>();
//		
//		List<String> images=new ArrayList<>();
//		String collectionName=allImage.get(0).getCollectionName();
//		for(int i=0; i<allImage.size(); i++) {
//			
//			images.add(allImage.get(i).getPath());
//			
//			if(!collectionName.equals(allImage.get(i).getCollectionName())) {
//				imageByCollections.put(collectionName, images);
//				System.out.println(allImage.get(i).getCollectionName());
//				collectionName=allImage.get(i).getCollectionName();
//				images=new ArrayList<>();
//			}
////			if(collectionName.equals(allImage.get(i).getCollectionName())) {
////				
////			}
//			
//			if(!collectionName.equals(allImage.get(i).getCollectionName())) {
////				imageByCollections.put(collectionName, images);
//				
//			}
//				
//		}
//		return imageByCollections;
//	}
	
	@GetMapping("/allCollection/{id}")
	public Map<String, List<String>> getCollections(@PathVariable long id) {
	    List<USerCollection> allImage = userService.getCollections(id);

	    Map<String, List<String>> imageByCollections = new HashMap<>();

	    if (!allImage.isEmpty()) {
	        List<String> images = new ArrayList<>();
	        String currentCollectionName = allImage.get(0).getCollectionName();

	        for (USerCollection userCollection : allImage) {
	            String collectionName = userCollection.getCollectionName();
	            String imagePath = userCollection.getPath();

	            if (!collectionName.equals(currentCollectionName)) {
	                // Add the current collection to the map
	                imageByCollections.put(currentCollectionName, new ArrayList<>(images));

	                // Start a new collection
	                currentCollectionName = collectionName;
	                images.clear();
	            }

	            images.add(imagePath);
	        }

	        // Add the last collection to the map
	        imageByCollections.put(currentCollectionName, new ArrayList<>(images));
	    }

	    return imageByCollections;
	}

}
