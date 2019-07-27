package com.hcl.Boot;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpRequest;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.hcl.Boot.Model.*;
import com.hcl.Boot.service.GetItemService;
import com.hcl.Boot.service.GetOrderService;
import com.hcl.Boot.service.LoginCheckService;
import com.hcl.Boot.service.PlaceOrderService;
import com.hcl.Boot.service.RegistrationService;
import com.hcl.Boot.serviceImpl.GetItemServiceImpl;
import com.hcl.Boot.serviceImpl.GetOrderServiceImpl;
import com.hcl.Boot.serviceImpl.LoginCheckServiceImpl;
import com.hcl.Boot.serviceImpl.PlaceOrderServiceImpl;
import com.hcl.Boot.serviceImpl.RegistrationServiceImpl;




@RestController
public class SampleController {
	
	
	private RegistrationService regService;
	private LoginCheckService lcService;
	private PlaceOrderService poService;
	HttpSession session;
	private GetItemService iService;
	private GetOrderService oService;

	@Autowired(required = true)
	private User user;
	private Order order;
	

	
	 


	@RequestMapping("/hello")
	public Object sayHello(){
		user = new User();
		user.setId(1);
		user.setEmail("spring@io.com");
		user.setUsername("angular 6");
		user.setPassword("1234");
		user.setPhone("123456987");
		user.setAddress("Madurai");
		
		return user;
		
		
	}
	
	
	@RequestMapping("/welcome")
	public ModelAndView welcome() {
		
		return new ModelAndView("welcome","msg","Welcome to Boot Application");
		//return "welcome";
	}
	
	@RequestMapping("/index")
	public ModelAndView getIndex() {
		System.out.println("session.." + session);
		System.out.println("uname.." + session.getAttribute("username"+session.getId()));
		if(session != null && session.getAttribute("username"+session.getId()) != null) {
			return new ModelAndView("index","msg","Welcome to Boot Application");
		}
		else {
			
			return new ModelAndView("login","msg","Login Here");
		}
		
	
	}
	
	@RequestMapping("/signup")
	public ModelAndView showSignup() {
		
		
		return new ModelAndView("signup","msg","Welcome to Boot Application");
	}
	
	@RequestMapping(value="/register",method=RequestMethod.POST)
	public @ResponseBody ModelAndView doRegsiter(User u)  {
		System.out.println("registering.." + u);
		
		try {
			
			regService = new RegistrationServiceImpl();	
			regService.saveUser(u);
		}
		
		catch(Exception e)
		{
			e.printStackTrace();
		}
			
			return new ModelAndView("index");
	}
	@RequestMapping("/login")
	public ModelAndView loginView() {
		
		return new ModelAndView("login","msg","Login Here");
	}
	
	@RequestMapping(value="/loginCheck",method=RequestMethod.POST)
	public @ResponseBody ModelAndView doLoginCheck(User u,HttpServletRequest req)  {
		System.out.println("checking..." + u);
		boolean result=false;
		String page = null;
		String message = null;
		try {
			
			lcService = new LoginCheckServiceImpl();	
			result= lcService.checkLogin(u);
			if(result== true) {
				System.out.println(" Login Sucessfull!");
				page="index";
				message="Login Sucessfull!";
				session=req.getSession();
				session.setAttribute("username"+session.getId(), u.getUsername());
				
				//get the item details
				List<Item> itemList = new ArrayList();
				iService = new GetItemServiceImpl();
				itemList= iService.getItem();
				itemList.get(0).setMessage("");
				return new ModelAndView(page,"item",itemList);
				
			}
			else {
				System.out.println("Invalid Login!");
				page="login";
				message="Invalid Login!";
				return new ModelAndView(page,"message",message);
			}
		}
		
		catch(Exception e)
		{
			e.printStackTrace();
		}
			
		return new ModelAndView(page,"message",message);
	}
	@RequestMapping("/logout")
	public ModelAndView getLougout() {
		if(session!=null) {
			session.setAttribute("username"+session.getId(), null);
		}
		
		return new ModelAndView("login","msg","Welcome to Boot Application");
	}
	
	@RequestMapping(value="/placeOrder",method=RequestMethod.POST)
	public @ResponseBody  ModelAndView doPlaceOrder(Order o,HttpServletRequest req)  {
		

		List<Item> itemList = new ArrayList();
	
		String message=null;
		try {
			poService = new PlaceOrderServiceImpl();
			poService.saveOrder(o);
			
			//get the item details
			iService = new GetItemServiceImpl();
			itemList= iService.getItem();
			if(itemList != null) {
				message = "your order placed sucessfully";
				itemList.get(0).setMessage(message);
			}
				
		}
		
		catch(Exception e)
		{
			e.printStackTrace();
		}
			return new ModelAndView("index","item",itemList);
			
	}
	
	@RequestMapping("/myOrder")
	public ModelAndView myOrder(User u,HttpServletRequest req) {
		String uname=(String) req.getSession().getAttribute("username"+session.getId());
		//get the item details
		List<Order> orderList = new ArrayList();
		oService = new GetOrderServiceImpl();
		orderList= oService.getOrder(uname);
		
		return new ModelAndView("MyOrder","order",orderList);
	}
		
	
}
