package com.codingdojo.CanAR.Services;

import org.springframework.stereotype.Service;

import com.codingdojo.CanAR.Models.Messages;
import com.codingdojo.CanAR.Repositories.MessageRepository;

@Service
public class AllService {
	private final MessageRepository messagerepo;

	public AllService(MessageRepository messagerepo) {
		this.messagerepo = messagerepo;
	}
	public void createmesage(Messages newMessage) {
		// TODO Auto-generated method stub
		messagerepo.save(newMessage);
	}
	
}
