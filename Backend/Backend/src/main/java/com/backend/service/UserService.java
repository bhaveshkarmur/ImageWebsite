package com.backend.service;

import java.util.Base64;
import java.util.List;

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
	
	public List<USerCollection> getCollections(long id){
		return userCollectionRepo.getCollections(id);
	}

}
