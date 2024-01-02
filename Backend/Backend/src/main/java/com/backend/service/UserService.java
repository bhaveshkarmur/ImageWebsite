package com.backend.service;

import java.util.ArrayList;
import java.util.Base64;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.backend.model.user.USerCollection;
import com.backend.model.user.User;
import com.backend.repo.UserCollectionRepo;
import com.backend.repo.UserRepo;

@Service
public class UserService {
	
	@Autowired
	UserRepo userRepo;
	
	@Autowired
	UserCollectionRepo userCollectionRepo;
	
	public User saveUser(String username,String emil,String password) {
		User user=new User();
		user.setUname(username);
		user.setEmail(emil);
		byte[] encode=Base64.getEncoder().encode(password.getBytes());
		String pass=new String(encode);
		user.setPassword(pass);
		System.out.println(pass);
		userRepo.save(user);
		return user;
	}
	
	public void addCollections(long id,String username,List<String> collections,String path) {
		
		
		for(int i=0; i<collections.size(); i++) {
			USerCollection userCollection=new USerCollection();
			userCollection.setUserId(id);
			userCollection.setUserName(username);
			userCollection.setPath(path);
			userCollection.setCollectionName(collections.get(i));
			userCollectionRepo.save(userCollection);
		}
		
	}
	
	public List<String> getAllCollections(long id){
	return	userCollectionRepo.getAllCollections(id);
	}
	

	
	public Map<String, List<String>> getCollections(long id) {
	    List<USerCollection> allImage = userCollectionRepo.getCollections(id);

	    Map<String, List<String>> imageByCollections = new HashMap<>();

	    for (USerCollection userCollection : allImage) {
	        String collectionName = userCollection.getCollectionName();
	        String imagePath = userCollection.getPath();

	        // Check if the collection is already in the map
	        if (imageByCollections.containsKey(collectionName)) {
	            // Collection exists, add the image path to the existing list
	            imageByCollections.get(collectionName).add(imagePath);
	        } else {
	            // Collection doesn't exist, create a new list and add the image path
	            List<String> images = new ArrayList<>();
	            images.add(imagePath);
	            imageByCollections.put(collectionName, images);
	        }
	    }

	    return imageByCollections;
	}

	
	public User Signup(String email,String password) {
		
		User user=userRepo.getPassword(email);
		String pass=user.getPassword();
		byte[] originalPassword=Base64.getDecoder().decode(pass.getBytes());
		 String decodedPassword = new String(originalPassword);
		System.out.println(decodedPassword);
		
		if(!password.equals(decodedPassword)) {
			user=null;
		}
		return user;
		
	}

}
