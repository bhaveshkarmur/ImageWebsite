package com.backend.model.user;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;

@Entity
public class USerCollection {

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private long id;
	
	private String userName;
	
	private Long userId;
	
	private String collectionName;
	
	private String path;

	public long getId() {
		return id;
	}

	public void setId(long id) {
		this.id = id;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public Long getUserId() {
		return userId;
	}

	public void setUserId(Long userId) {
		this.userId = userId;
	}

	public String getPath() {
		return path;
	}

	public void setPath(String path) {
		this.path = path;
	}

	public String getCollectionName() {
		return collectionName;
	}

	public void setCollectionName(String collectionName) {
		this.collectionName = collectionName;
	}

	public USerCollection(long id, String userName, Long userId, String collectionName, String path) {
		super();
		this.id = id;
		this.userName = userName;
		this.userId = userId;
		this.collectionName = collectionName;
		this.path = path;
	}

	public USerCollection() {
		super();
		// TODO Auto-generated constructor stub
	}


	
	
}
