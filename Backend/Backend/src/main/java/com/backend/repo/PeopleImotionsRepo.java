package com.backend.repo;

import org.springframework.data.jpa.repository.JpaRepository;

import com.backend.model.PeopleAndEmotions;

public interface PeopleImotionsRepo extends JpaRepository<PeopleAndEmotions,Long>{

}
