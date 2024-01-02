package com.backend.repo;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import com.backend.model.user.User;

public interface UserRepo extends JpaRepository<User, Long>{

	@Query(value = "select *from user where email=:email",nativeQuery = true)
	User getPassword(@Param("email") String email);
}
