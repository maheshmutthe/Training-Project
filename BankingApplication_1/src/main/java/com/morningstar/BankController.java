package com.morningstar;

import java.io.PrintWriter;
import java.sql.Date;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.morningstar.model.AccountDetails;
import com.morningstar.model.AccountMaster;
import com.morningstar.model.BeneficiaryDetails;
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
	public String newRegistrationForm(Model model)
	{
		model.addAttribute("accountMaster",new AccountMaster());
		return "newUser";
	}
	
	@PostMapping(path="userRegistration.do")
	public String addUser(AccountMaster accountMaster,Model model)
	{
		int res=service.addUser(accountMaster);
		
		if(res>=1)
		{
			AccountMaster acc= service.getAccountNumberfromDb(accountMaster.getEmailId());
			model.addAttribute("accountnumber",acc);
			return "accGeneration";
		}
		else
			return "newUser";
	}
	
	
	//*********************Register for online banking*******************//
	@GetMapping(path="ShowPageForInternetBanking")
	public String ShowPageForInternetBanking() {
		return "internetBanking";
	}
	
	
	@PostMapping(path="internetbankingRegistration.do")
	public String internetBAnkingRegistration(InternetBanking internetBanking) {
		int result=service.addInternetBankingAccount(internetBanking);
		if(result>=1)
		{
			return "index";
		}
		else
			return "newUser";
	}
	
	
	//*********************Login********************//
	@GetMapping(path="getLoginPage")
	public String getLoginPage() {
		return "login";
	}
	
	@PostMapping(path="login")
	public String login(String email, String password,HttpServletRequest req) {
		HttpSession session=req.getSession();
		boolean result= service.login(email, password);
		System.out.println(result);
		if(result)
		{
			session.setAttribute("email",email);
			System.out.println(result);
			return "dashboard";
		}
		return "login";
	}
	
	
	
	//**************LogOut***************//
	@GetMapping(path="logout.view")
	public String logout(HttpServletRequest req,HttpSession session)
	{
		session=req.getSession();
		session.setAttribute("add", "add");
		System.out.println("Session ID: " + session.getId());
		System.out.println("Name: " + session.getAttribute("add"));
   
		session.setMaxInactiveInterval(10);
		System.out.println(session.getMaxInactiveInterval());
		if(session.getMaxInactiveInterval()>10)
		{
			System.out.println(session.getAttribute("add"));
			session.invalidate();
			
			return "logout";
		}
		return "register";
		
	}
	
	
	
	//**************setnewpassword**************//
	@GetMapping(path="setpassword.view")
	public String setPasswordView()
	{
		return "setpassword";
	}
	
	
	@PostMapping(path="setpassword.do")
	public String setPassword(@RequestParam("loginPassword") String loginpass,@RequestParam("transactionPassword") String transpass,InternetBanking internetbanking, Model model,HttpServletRequest request)
	{
        HttpSession session=request.getSession(false);
//		session.setAttribute("id",1);
//		
//        System.out.println("Session ID: " + session.getId());
//        System.out.println("Creation Time: " + new Date(session.getCreationTime()));
//        System.out.println("Last Accessed Time: " + new Date(session.getLastAccessedTime()));
		
		String email=(String) session.getAttribute("email");
		int res=service.updatePassword(email,loginpass,transpass);
		if(res>=1)
		{
			model.addAttribute("updpass","password updated Succesfully..");
			return "index";
		}
		else
			return "redirect:setpassword.view";
	}
	
	
	
	
	
	
	
	
	//---------------Beneficiary details----------
	@GetMapping(path="addBene")
	public String newBeneficiaryForm()
	{
		return "addBeneficiary";
	}
	
	@PostMapping(path="BeneficiaryRegistration.do")
	public String addBeneficiary(BeneficiaryDetails beneficiaryDetails)
	{
		int res=service.addBeneficiary(beneficiaryDetails);
		if(res>=1)
		{
			//model.addAttribute("msg","added");
			return "redirect:home";
		}
		else
			return "addBeneficiary";
	}
	
	
	
	//******* Add Credit *******//

	@GetMapping(path="Credit.view")
	public String newCreditForm()
	{
		return "addCredit";
	}
	
	@PostMapping(path="CreditDetails.do")
	public String addCredit(AccountDetails accountDetails)
	{
		int res=service.addCredit(accountDetails);
		if(res>=1)
		{
			//model.addAttribute("msg","added");
			return "redirect:/";
		}
		else
			return "addCredit";
	}
	
	//******* Add Debit *******//

			@GetMapping(path="Debit.view")
			public String newDebitForm()
			{
				return "addDebit";
			}
			
			@PostMapping(path="DebitDetails.do")
			public String addDebit(AccountDetails accountDetails)
			{
				int res=service.addDebit(accountDetails);
				if(res>=1)
				{
					//model.addAttribute("msg","added");
					return "redirect:/";
				}
				else
					return "addDebit";
			}

}
	
	
