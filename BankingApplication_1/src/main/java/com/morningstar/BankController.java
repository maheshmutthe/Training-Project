package com.morningstar;

import java.io.PrintWriter;
import java.sql.Date;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpOutputMessage;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
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
	
	@GetMapping(path="home")
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
//		session=req.getSession(false);
//		session.setAttribute("add", "add");
//		System.out.println("Session ID: " + session.getId());
//		System.out.println("Name: " + session.getAttribute("add"));
   
//		session.setMaxInactiveInterval(10);
//		System.out.println(session.getMaxInactiveInterval());
		
		if(session.getAttribute("email")!=null){
			System.out.println(session.getAttribute("email"));
			session.invalidate();
			return "logout";
		}
		
		return "redirect:getLoginPage";
		
		
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
			session.invalidate();
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
	
	@GetMapping(path="funtransfer.view")
	public String fundtransfer(Model model)
	{
		model.addAttribute("page","fund");
		return "dashboard";
	}
	

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
			return "redirect:home";
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
					return "redirect:home";
				}
				else
					return "addDebit";
			}
			
			
			
			@GetMapping(path="showuserdetails.view")
			public String showUserDetails(HttpSession session,Model model)
			{
				String email=(String)session.getAttribute("email");
				InternetBanking banking= service.getUserDetails(email);
				AccountMaster accountmaster=service.getUser(banking.getAccountNo());
				model.addAttribute("page","home");
				model.addAttribute("k",accountmaster);
				return "customerdetails";
			}
			
			
			
			@GetMapping(path="showwelcomedetail.view")
			public String showWelcomeDetails(HttpSession session,Model model)
			{
				String email=(String)session.getAttribute("email");
				InternetBanking banking= service.getUserDetails(email);
				AccountMaster accountmaster=service.getUser(banking.getAccountNo());
				model.addAttribute("page","home");
				model.addAttribute("k",accountmaster);
				return "dashboard";
			}

			
			
			@GetMapping(path="showaccountdetail.view")
			public String showAccountDetails(HttpSession session,Model model)
			{
				String email=(String)session.getAttribute("email");
				InternetBanking banking= service.getUserDetails(email);
				AccountMaster accountmaster=service.getUser(banking.getAccountNo());
				AccountDetails details=service.getAccountDetails(banking.getAccountNo());
				model.addAttribute("page","account");
				model.addAttribute("k",accountmaster);
				model.addAttribute("ad",details);
				return "dashboard";
			}

			
			//********************Admin Login****************//
			@GetMapping(path="adminlogin.view")
			public String adminLoginView()
			{
				return "adminLogin";
			}
			
			
			
			@PostMapping(path="checkadminLogin.do")
			public String checkAdminLogin(String adminId,String password)
			{
				boolean res=service.checkLogin(adminId,password);
				if(res)
				{
					return "admindashboard";
				}
				else
					return "redirect:adminlogin.view";
			}
			
			
			//**********helpdek********//
			@GetMapping(path="helpdesk.view")
			public String helpDeskView(Model model)
			{
				model.addAttribute("page","help");
				return "dashboard";
			}
			
			
			
			
			//***********forgot use id***************//
			@GetMapping(path="forgotUserId.view")
			public String ShowForgotUserIdView()
			{
				return "forgotUserId";
			}

			@PostMapping(path="forgotUserId.do")
			public String getUserId(@RequestParam("accountNumber") int accountNumber,@RequestParam("secretQuestion")String secretQuestion,@RequestParam("secretAnswer")String SecretAnswer,Model model)
			{
				int internetBankingId=0;
				try {
					internetBankingId=service.forgotUsername(accountNumber, secretQuestion, SecretAnswer);
					if(internetBankingId>=0)
					{
						model.addAttribute("internetBankingId",internetBankingId);
						return "showUserId";
					}
				} catch (Exception e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
				return "forgetUserId";
				
				
			}
			
			@GetMapping(path="forgotPassword.view")
			public String ShowForgotPasswordView()
			{
				return "forgotPassword";
			}

			@PostMapping(path="forgotPassword.do")
			public String getPassword(@RequestParam("internetBankingId")int internetBankingId,@RequestParam("secretQuestion")String secretQuestion,@RequestParam("SecretAnswer")String SecretAnswer,Model model)
			{
				int result=0;
				try {
					result=service.forgotPassword(internetBankingId, secretQuestion, SecretAnswer);
					if(result>=1) {
						return "setNewPassword";
					}
				} catch (Exception e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
				return "forgotPassword";
				
			}
			@PostMapping(path="setNewPassword.do")
			public String setPassword(@RequestParam("internetBankingId")int internetBankingId,@RequestParam("loginPassword")String loginPassword,@RequestParam("confirmLoginPassword")String confirmLoginPassword)
			{
				int result=0;
				try {
					result=service.setNewPassword(internetBankingId, loginPassword, confirmLoginPassword);
					if(result>=1) {
						return "passwordChange";
					}
				} catch (Exception e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
				return "setNewPassword";
				
				
			}
			
			
			
			//******* Imps Transfer *******//

			@GetMapping(path="IMPS.view")
			public String newImpsForm()
			{
				return "IMPS_Initiate";
			}
			
			@PostMapping(path="IMPS_Page.do")
			public String impsTransaction(AccountDetails accountDetails, BeneficiaryDetails beneficiaryDetails)
			{
				int res=service.impsTransaction(accountDetails, beneficiaryDetails);
				int res1 = service.impsTransaction1(accountDetails, beneficiaryDetails);
				System.out.println(res);
				System.out.println(res1);

				if(res>=1 && res1 >=1)
				{
					//model.addAttribute("msg","added");
					return "redirect:home";
				}
				else
					return "IMPS_Initiate";
			}
			
			

}
	
	
