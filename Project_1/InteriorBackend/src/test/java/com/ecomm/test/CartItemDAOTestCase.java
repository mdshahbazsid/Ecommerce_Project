package com.ecomm.test;

import static org.junit.Assert.*;

import java.util.List;

import org.junit.BeforeClass;
import org.junit.Ignore;
import org.junit.Test;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.ecomm.dao.CartItemDAO;
import com.ecomm.model.CartItem;

public class CartItemDAOTestCase {


	static CartItemDAO cartItemDAO;
	
	@BeforeClass
	public static void executeFirst() {
		
		AnnotationConfigApplicationContext context = new AnnotationConfigApplicationContext();
		context.scan("com.ecomm");
		context.refresh();
		
		cartItemDAO = (CartItemDAO)context.getBean("cartItemDAO");
	}

	@Ignore
	@Test
	public void addCartItemTest() {
		
		CartItem cartItem = new CartItem();
		
		cartItem.setProductId(2);
		cartItem.setProductName("Long Door Curtains");
		cartItem.setPrice(1889);
		cartItem.setUserName("vivek");
		cartItem.setQuantity(7);
		cartItem.setStatus("NA");
		
		assertTrue("Problem in adding CartItem",cartItemDAO.addCartItem(cartItem));
		}

	@Ignore
	@Test
	public void updateCartItemTest() {
		CartItem cartItem = new CartItem();
		
		cartItem.setProductId(2);
		cartItem.setProductName("Long Door Curtains");
		cartItem.setPrice(1889);
		cartItem.setUserName("vivek");
		cartItem.setQuantity(11);
		cartItem.setStatus("NA");
		
		assertTrue("problem in Updating the CartItem",cartItemDAO.updateCartItem(cartItem));
	}
	@Ignore
	@Test
	public void deleteCartItemTest() {
		
		CartItem cartItem = new CartItem();
		cartItem = cartItemDAO.getCartItem(74);
		
		assertTrue("Problem in Deleting the CartItem",cartItemDAO.deleteCartItem(cartItem));
	}
	@Ignore
	@Test
	public void listCartItemTest() {
		
		List<CartItem> listCartItems = cartItemDAO.listCartItems("vivek");
		
		assertTrue("Problem in Listing the CartItems",listCartItems.size()>0);
		
		for(CartItem cartItem :listCartItems) {
			//System.out.print("Cart ID : "+cartItem.getCartItemId()+" ");
			System.out.print("Product Price : "+cartItem.getPrice()+" ");
			System.out.print("Product ID : "+cartItem.getProductId()+" ");
			System.out.print("Product Name : "+cartItem.getProductName()+" ");
			System.out.print("Product Quantity : "+cartItem.getQuantity()+" ");
			System.out.println("Status : "+cartItem.getStatus()+" ");
			System.out.print("User Name : "+cartItem.getUserName()+" ");
		
		}
	}
	@Ignore
	@Test
	public void getCartItemTest() {
		
		CartItem cartItem = cartItemDAO.getCartItem(75);
		assertNotNull("CartItem is Null",cartItem);
		System.out.print("Cart ID : "+cartItem.getCartItemId()+" ");
		System.out.print("Product Price : "+cartItem.getPrice()+" ");
		System.out.print("Product ID : "+cartItem.getProductId()+" ");
		System.out.print("Product Name : "+cartItem.getProductName()+" ");
		System.out.print("Product Quantity : "+cartItem.getQuantity()+" ");
		System.out.println("Status : "+cartItem.getStatus()+" ");
		System.out.print("User Name : "+cartItem.getUserName()+" ");
	}
}
