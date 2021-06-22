package com.codingdojo.Licenses.services;

import java.util.List;
import java.util.Optional;

import org.springframework.stereotype.Service;

import com.codingdojo.Licenses.models.License;
import com.codingdojo.Licenses.models.Person;
import com.codingdojo.Licenses.repositories.LicensesRepository;


@Service
public class LicenseService {
	private final LicensesRepository licenserepo;
	public LicenseService(LicensesRepository licenserepo) {
		this.licenserepo=licenserepo;
	}

	
	public License createlicnse(License m) {
		return licenserepo.save(m);
	}


}
