package com.backend.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RestController;

import com.backend.model.Animal;
import com.backend.model.Education;
import com.backend.model.LifeStyle;
import com.backend.model.NatureImage;
import com.backend.model.PeopleAndEmotions;
import com.backend.service.ImageService;

@RestController
@CrossOrigin("*")
public class ImageController {

	@Autowired
	ImageService imageService;
	
	
	@GetMapping("/natureImage")
	public List<NatureImage> getAll(){
		return imageService.getAll();
	}
	
	@GetMapping("/peopleEmotion")
	
	public List<PeopleAndEmotions> getAllPeople(){
		return imageService.getAllPeople();
	}
	
	@GetMapping("/EducationImage")
	public List<Education> getAllEducation(){
		return imageService.getAllEducation();
	}
	
	@GetMapping("/")
	public List<LifeStyle> getAllLifeStyle(){
		return imageService.GetAllLifeStyle();
	}
	
	@GetMapping("/animalImage")
	public List<Animal> getAllAnimal(){
		return imageService.getAllAnimals();
	}
	
	@GetMapping("/searching/{keyword}")
	public List<String> SearchImage(@PathVariable String keyword){
		return imageService.searchImage(keyword);
	}
}
