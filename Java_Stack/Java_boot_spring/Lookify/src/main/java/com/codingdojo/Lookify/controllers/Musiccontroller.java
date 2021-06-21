package com.codingdojo.Lookify.controllers;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.codingdojo.Lookify.models.Music;
import com.codingdojo.Lookify.services.Musicservice;

@Controller
public class Musiccontroller {
	private final Musicservice musicservise;

	public Musiccontroller(Musicservice musicservise) {
		this.musicservise = musicservise;
	}

	@RequestMapping("/")
	public String index() {
		return "index.jsp";
	}

	@RequestMapping("/dashboard")
	public String dashboard(Model model) {
		List<Music> musics = musicservise.allmusics();
		model.addAttribute("music", musics);
		return "dashboard.jsp";
	}

	@RequestMapping("/songs/new")
	public String newsong(Model model) {
		return "new.jsp";
	}

	@RequestMapping(value = "/songs/new", method = RequestMethod.POST)
	public String newsongpost(@RequestParam(value = "title") String title, @RequestParam(value = "artist") String artist,
			@RequestParam(value = "rating") int rating) {
		Music music = new Music(title,artist, rating);
		musicservise.createmusic(music);
		return "redirect:/dashboard";
	}
	
	@RequestMapping(value = "/music/{id}", method= {RequestMethod.DELETE, RequestMethod.POST})
	public String delete(@PathVariable("id") Long id) {
		musicservise.deletemusic(id);
		return "redirect:/dashboard";
	}
	@RequestMapping("/song/{id}")
	public String view(@PathVariable("id") Long id, Model model) {
		Music song = musicservise.findmusic(id);
		model.addAttribute("song", song);
		return "song.jsp";
	}
	@RequestMapping(value="/search", method=RequestMethod.GET)
	public String search(@RequestParam(value="title") String artist, Model model) {
		List<Music> songs = musicservise.allsongssearch(artist);
		model.addAttribute("songs", songs);
		model.addAttribute("artist", artist);
		return "search.jsp";
	}
	@RequestMapping("/search/topTen")
	public String topTen(Model model) {
		List<Music> songs = musicservise.topTen();
		model.addAttribute("songs", songs);
		return "topten.jsp";
	}
}
