package com.codingdojo.Lookify.services;

import java.awt.print.Pageable;
import java.util.List;
import java.util.Optional;

import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Sort.Direction;
import org.springframework.stereotype.Service;

import com.codingdojo.Lookify.models.Music;
import com.codingdojo.Lookify.repositories.Musicrepository;

@Service
public class Musicservice {
	private final Musicrepository musicrepo;
	public Musicservice(Musicrepository musicrepo) {
		this.musicrepo=musicrepo;
	}
	
	public List<Music> allmusics(){
		return musicrepo.findAll();
	}
	
	public Music createmusic(Music m) {
		return musicrepo.save(m);
	}
	public Music findmusic(Long id) {
		Optional<Music> optionalmusic = musicrepo.findById(id);
		if(optionalmusic.isPresent()) return optionalmusic.get();
		else return null;
	}

public void deletemusic(Long id) {
	Optional<Music> optionalmusic = musicrepo.findById(id);
	if(optionalmusic.isPresent()) {
		musicrepo.deleteById(id);
	}

}

public List<Music> allsongssearch(String artist) {
	List<Music> results = musicrepo.findByArtistContaining(artist);
	return results;
}

public List<Music> topTen() {
	List<Music> results = musicrepo.findTop10ByOrderByRatingDesc();
	return results;
}
}
