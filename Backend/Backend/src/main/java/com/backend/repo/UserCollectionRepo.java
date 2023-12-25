package com.backend.repo;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import com.backend.model.user.USerCollection;

public interface UserCollectionRepo extends JpaRepository<USerCollection,Long>{

	@Query(value ="select distinct collection_name from user_collection where user_id=:id",nativeQuery = true)
	List<String> getAllCollections(@Param("id") long id);
	
	@Query(value="select *from user_collection where user_id=:id",nativeQuery = true)
	List<USerCollection> getCollections(@Param("id") long id);
}
