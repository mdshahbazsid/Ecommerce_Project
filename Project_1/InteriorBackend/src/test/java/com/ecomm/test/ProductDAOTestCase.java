package com.ecomm.test;

import static org.junit.Assert.*;

import java.util.List;

import org.junit.BeforeClass;
import org.junit.Ignore;
import org.junit.Test;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.ecomm.dao.ProductDAO;
import com.ecomm.model.Product;

public class ProductDAOTestCase {

	static ProductDAO productDAO;
	
	@BeforeClass
	public static void executeFirst() {
		
		AnnotationConfigApplicationContext context = new AnnotationConfigApplicationContext();
		context.scan("com.ecomm");
		context.refresh();
		
		productDAO = (ProductDAO)context.getBean("productDAO");
	}
	@Ignore
	@Test
	public void addProductTest() {
		
		Product product = new Product();
		
		product.setProductName("Blue Window Mirror");
		product.setProductDesc("Mirror Fitting To Windows");
		product.setPrice(7000);
		product.setStock(10);
		product.setCategoryId(1);
		product.setSupplierId(1);
		
		assertTrue("Problem in adding Product",productDAO.addProduct(product));
	}
	@Ignore
	@Test
	public void updateProductTest() {
		
		Product product = new Product();
		product.setProductId(1);
		product.setProductName("Blue Window Mirror");
		product.setProductDesc("Mirror Fitting To Windows");
		product.setPrice(9000);
		product.setStock(10);
		product.setCategoryId(1);
		product.setSupplierId(1);
		
		assertTrue("Problem in adding Product",productDAO.updateProduct(product));
	}
	@Ignore
	@Test
	public void deleteProductTest() {
		
		Product product = new Product();
		product = productDAO.getProduct(1);
		
		assertTrue("Problem in adding Product",productDAO.deleteProduct(product));
	}
	@Ignore
	@Test
	public void listProductTest() {
		
		List<Product> listProducts = productDAO.listProducts();
		
		assertTrue("Problem in Listing the Products",listProducts.size()>0);
		
		for(Product product : listProducts) {
			System.out.print("ProductID : "+product.getProductId()+" ");
			System.out.print("ProductName : "+product.getProductName()+" ");
			System.out.print("ProductDesc : "+product.getProductDesc()+" ");
			System.out.print("ProductPrice : "+product.getPrice()+" ");
			System.out.println("ProductStock : "+product.getStock()+" ");
		}
	}
	
	@Test
	public void listProductbyCategory() {
		
		List<Product> listProductByCategory = productDAO.listProductByCategory(1);
		
		assertTrue("Problem in Listing the Products",listProductByCategory.size()>0);
		
		for(Product product : listProductByCategory) {
			System.out.print("CategoryID : "+product.getCategoryId()+" ");
			System.out.print("ProductID : "+product.getProductId()+" ");
			System.out.print("ProductName : "+product.getProductName()+" ");
			System.out.print("ProductDesc : "+product.getProductDesc()+" ");
			System.out.print("ProductPrice : "+product.getPrice()+" ");
			System.out.println("ProductStock : "+product.getStock()+" ");
		}
	}
}

