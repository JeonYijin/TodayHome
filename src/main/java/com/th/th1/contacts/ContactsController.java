package com.th.th1.contacts;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/contacts/**")
public class ContactsController {

	@Autowired
	private ContactsService contactsService;
	
	@GetMapping("new")
	public void contacts_new() throws Exception {}
}
