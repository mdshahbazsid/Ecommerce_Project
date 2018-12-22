package com.ecomm.test;

import static org.junit.Assert.*;

import java.util.Date;

import org.junit.BeforeClass;
import org.junit.Ignore;
import org.junit.Test;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.ecomm.dao.OrderDetailDAO;
import com.ecomm.model.OrderDetail;

public class OrderDetailDAOTestCase {

	static OrderDetailDAO orderDetailDAO;
	
	@BeforeClass
	public static void executeFirst() {
		
		AnnotationConfigApplicationContext context = new AnnotationConfigApplicationContext();
		context.scan("com.ecomm");
		context.refresh();
		
		orderDetailDAO = (OrderDetailDAO)context.getBean("orderDetailDAO");
	}

	@Ignore
	@Test
	public void insertOrderDetailTest() {
		
		OrderDetail orderDetail = new OrderDetail();
		orderDetail.setUserName("vivek");
		orderDetail.setTotalCartAmount(9000);
		orderDetail.setOrderDate(new Date());
		orderDetail.setPaymentMode("CC");
		
		assertTrue("Problem in adding OrderDetail",orderDetailDAO.insertOrderDetail(orderDetail));
		}

	//@Ignore
	@Test
	public void updateCartItemStatusTest() {
			
		assertTrue("Problem in Updating CartItem Status ",orderDetailDAO.updateOrderDetail("vivek"));

		}
	
}
