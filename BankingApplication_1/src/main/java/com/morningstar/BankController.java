package com.morningstar;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.morningstar.model.AccountMaster;
import com.morningstar.model.InternetBanking;
import com.morningstar.service.BankService;

@Controller
public class BankController {
	
	@Autowired
	private BankService service;
	
	@GetMapping(path="/")
	public String welcome()
	{
		return "index";
	}
	
	@GetMapping(path="addUser.view")
	public String newRegistrationForm()
	{
		return "newUser";
	}
	
	@PostMapping(path="userRegistration.do")
	public String addUser(AccountMaster accountMaster,Model model)
	{
		int res=service.addUser(accountMaster);
		if(res>=1)
		{
			model.addAttribute("msg","added");
			return "index";
		}
		else
			return "newUser";
	}
	
	
	//*********************Register for online banking*******************//
	@GetMapping(path="register.view")
	public String registerForOnlineBanking()
	{
		return "register";
	}
	
	
	@PostMapping(path="register.do")
	public String addUser(InternetBanking internetBanking,Model model)
	{
		int res=service.registerUser(internetBanking);
		if(res>=1)
		{
			model.addAttribute("msgreg","You have been registered Succesfully..");
			return "index";
		}
		else
			return "newUser";
	}

	
	
	@GetMapping(path="setpassword.view")
	public String setPasswordView()
	{
		return "setpassword";
	}
}
