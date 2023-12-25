package com.backend.repo;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import com.backend.model.NatureImage;

public interface NatureRepo extends JpaRepository<NatureImage, Long> {

	@Query(value =
		    "SELECT path FROM nature_image WHERE keyword LIKE %:keyword%" +
		    " UNION ALL " +
		    "SELECT path FROM people_and_emotions WHERE keyword LIKE %:keyword%" +
		    " UNION ALL " +
		    "SELECT path FROM education WHERE keyword LIKE %:keyword%" +
		    " UNION ALL " +
		    "SELECT path FROM life_style WHERE keyword LIKE %:keyword%" +
		    " UNION ALL " +
		    "SELECT path FROM animal WHERE keyword LIKE %:keyword%",
		    nativeQuery = true)
		List<String> searchImage(@Param("keyword") String keyword);

}
