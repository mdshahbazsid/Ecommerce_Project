package com.ecomm.test;

import static org.junit.Assert.*;

import java.util.ArrayList;
import java.util.List;

import org.junit.BeforeClass;
import org.junit.Ignore;
import org.junit.Test;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.ecomm.dao.UserDetailDAO;
import com.ecomm.model.UserDetail;


public class UserDetailDAOTestCase {

static UserDetailDAO userdetailDAO;
	
	@BeforeClass
	public static void executeFirst() {
		
		AnnotationConfigApplicationContext context = new AnnotationConfigApplicationContext();
		context.scan("com.ecomm");
		context.refresh();
		
		userdetailDAO = (UserDetailDAO)context.getBean("userdetailDAO");
	}

	@Ignore
	@Test
	public void addUserTest() {
		
		UserDetail userdetail = new UserDetail();
		userdetail.setUserName("sam");
		userdetail.setPassword("pass@12345");
		userdetail.setEnabled(true);
		userdetail.setRole("USER");
		//userdetail.setCustomerName("Vivek Kumar");
		userdetail.setEmailId("sam@gmail.com");
		userdetail.setMobileNo("9119191919");
		userdetail.setAddress("Noida,Delhi");
		
		assertTrue("Problem in adding User",userdetailDAO.addUserDetail(userdetail));
		}
	
	@Ignore
	@Test
	public void updateUserTest() {
		UserDetail userdetail = new UserDetail();
		userdetail.setUserName("summit004");
		userdetail.setPassword("pass@12345");
		userdetail.setEnabled(true);
		userdetail.setRole("USER");
		//userdetail.setCustomerName("Summit Mishra");
		userdetail.setEmailId("summitmishra@gmail.com");
		userdetail.setMobileNo("7868888888");
		userdetail.setAddress("Sas House,Hazratganj");
		
		assertTrue("problem in Updating the User",userdetailDAO.updateUserDetail(userdetail));
	}
	
	@Ignore
	@Test
	public void deleteUserTest() {
		
		UserDetail userdetail = new UserDetail();
		userdetail = userdetailDAO.getUserDetail("summit");
		
		assertTrue("Problem in Deleting the User",userdetailDAO.deleteUserDetail(userdetail));
	}
	
	@Ignore
	@Test
	public void listUsersTest() {
		
		List<UserDetail> listUsers = userdetailDAO.listUsers();
		
		assertTrue("Problem in Listing the Categories",listUsers.size()>0);
		
		for(UserDetail user : listUsers) {
			System.out.print("User Name : "+user.getUserName()+" ");
			System.out.print("User Password : "+user.getPassword()+" ");
			System.out.print("User Enabaled : "+user.getEnabled()+" ");
			System.out.print("User Role : "+user.getRole()+" ");
			//System.out.print("Customer Name : "+user.getCustomerName()+" ");
			System.out.print("Mobile no. : "+user.getMobileNo()+" ");
			System.out.print("Email Id : "+user.getEmailId()+" ");
			System.out.println("Address : "+user.getAddress()+" ");
			
		}
	}
	@Ignore
	@Test
	public void checkingUsers() {
		
		if(userdetailDAO.userNames("hhh")) 
			System.out.println("Exist");
		
		else 
			System.out.println("Not Exist");
		
		
		/*List<UserDetail> listUsers = userdetailDAO.listUsers();
		
		assertTrue("Problem in Fetching The UserName",listUsers.size()>0);
		
		ArrayList userNames = new ArrayList();
			for(UserDetail user : listUsers)
			{
				userNames.add(user.getUserName());
			}
			
			if(userNames.contains("o"))
			{
				System.out.println("User Exist");
			}
			else 
			{
				System.out.println("User Not Exist");
			}*/
	}	
}
