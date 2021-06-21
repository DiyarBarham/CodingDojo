package com.codingdojo.Lookify.repositories;

import java.util.List;

import org.springframework.data.repository.CrudRepository;

import com.codingdojo.Lookify.models.Music;

public interface Musicrepository extends CrudRepository<Music, Long>{
	List<Music> findAll();
	List<Music> findByArtistContaining(String search);
	Long countByTitleContaining(String search);
	Long deleteByTitleStartingWith(String search);
	List<Music> findTop10ByOrderByRatingDesc();

}
