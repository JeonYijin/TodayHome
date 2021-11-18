package com.th.th1.contacts;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.th.th1.util.FileManager;

@Service
public class ContactsService {

	@Autowired
	private ContactsDAO contactsDAO;	
	@Autowired
	private FileManager fileManager;
}
