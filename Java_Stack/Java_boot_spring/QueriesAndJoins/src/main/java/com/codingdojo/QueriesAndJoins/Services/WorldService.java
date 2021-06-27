package com.codingdojo.QueriesAndJoins.Services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.codingdojo.QueriesAndJoins.Models.City;
import com.codingdojo.QueriesAndJoins.Models.Country;
import com.codingdojo.QueriesAndJoins.Models.Language;
import com.codingdojo.QueriesAndJoins.Repositories.CityRepository;
import com.codingdojo.QueriesAndJoins.Repositories.CountryRepository;
import com.codingdojo.QueriesAndJoins.Repositories.LanguageRepository;



@Service
public class WorldService {
	@Autowired
	private CountryRepository cRepo;
	@Autowired
	private CityRepository ciRepo;
	@Autowired
	private LanguageRepository lRepo;
	public List<Country> getCountries() {
		return this.cRepo.findConMonCountries();
	}
	public List<City> getCities() {
		return this.ciRepo.findAll();
	}
	public List<Language> getLanguages() {
		return this.lRepo.findAll();
	}
	public List<Country> getCountryByName(String name) {
		return this.cRepo.findCountryByName(name);
	}
	public List<Object[]> getCountryByLanguage(String lang) {
		return this.cRepo.findCountryByLang(lang);
	}
	public List<Object[]> getCountryByRegion() {
		return this.cRepo.findCountryByRegion();
	}
	public List<Object[]> getCountriesByCityCount() {
		return this.cRepo.findCountryCityCount();
	}
	public List<Object[]> getCountryLanguagues() {
		return this.lRepo.findCountryLangs();
	}
	public List<City> getMexicanCities() {
		return this.ciRepo.mexicanCities();
	}
	public List<Object[]> getBuenosAiresCities() {
		return this.ciRepo.argentinaBuenosAires();
	}
}