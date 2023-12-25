package com.backend.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.backend.model.Animal;
import com.backend.model.Education;
import com.backend.model.LifeStyle;
import com.backend.model.NatureImage;
import com.backend.model.PeopleAndEmotions;
import com.backend.repo.AnimalRepo;
import com.backend.repo.EducationRepo;
import com.backend.repo.LifeStyleRepo;
import com.backend.repo.NatureRepo;
import com.backend.repo.PeopleImotionsRepo;

@Service
public class ImageService {
	
	@Autowired
	NatureRepo natureRepo;
	
	@Autowired
	PeopleImotionsRepo peopleImotionsRepo;
	
	@Autowired
	EducationRepo educationRepo;
	
	@Autowired
	LifeStyleRepo lifeStyleRepo;
	
	@Autowired
	AnimalRepo animalRepo;
	
	public List<NatureImage> getAll(){
		return natureRepo.findAll();
	}
	
	public List<PeopleAndEmotions> getAllPeople(){
		return peopleImotionsRepo.findAll();
	}
	
	public List<Education> getAllEducation(){
		return educationRepo.findAll();
	}
	
	public List<LifeStyle> GetAllLifeStyle(){
		return lifeStyleRepo.findAll();
	}
	
	public List<Animal> getAllAnimals(){
		return animalRepo.findAll();
	}
	
	public List<String> searchImage(String keyword){
		return natureRepo.searchImage(keyword);
	}

}
