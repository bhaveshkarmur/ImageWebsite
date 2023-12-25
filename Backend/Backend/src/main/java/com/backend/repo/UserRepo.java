package com.backend.repo;

import org.springframework.data.jpa.repository.JpaRepository;

import com.backend.model.user.User;

public interface UserRepo extends JpaRepository<User, Long>{

}
