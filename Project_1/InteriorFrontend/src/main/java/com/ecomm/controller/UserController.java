package com.ecomm.controller;

import java.util.Collection;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.context.SecurityContext;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.ecomm.dao.ProductDAO;
import com.ecomm.dao.UserDetailDAO;
import com.ecomm.model.UserDetail;

@Controller
public class UserController {

	@Autowired
	ProductDAO productDAO;
	
	@RequestMapping(value="/login_success")
	public String loginSuccess(Model m,HttpSession session) {
		
		String page="";
		
		Boolean loggedIn=false;
		SecurityContext securitycontext = SecurityContextHolder.getContext();
		Authentication authentication = securitycontext.getAuthentication();
		
		String username=authentication.getName();
		
		Collection<GrantedAuthority> roles = (Collection<GrantedAuthority>)authentication.getAuthorities();
		
		for(GrantedAuthority role:roles)
		{
			session.setAttribute("role",role.getAuthority());
			if(role.getAuthority().equals("USER"))
			{
				loggedIn=true;
				
				page="ProductDisplay";
				m.addAttribute("productlist",productDAO.listProducts());
				session.setAttribute("loggedIn",loggedIn);
				session.setAttribute("username",username);
			}
			else
			{
				loggedIn=true;
				page="AdminPage";
				session.setAttribute("loggedIn",loggedIn);
				session.setAttribute("username",username);
			}
		}
		return page;
	}	
}
