package com.ecomm.test;

import static org.junit.Assert.*;

import java.util.List;

import org.junit.BeforeClass;
import org.junit.Ignore;
import org.junit.Test;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.ecomm.dao.CategoryDAO;
import com.ecomm.model.Category;


public class CategoryDAOTestCase {


	static CategoryDAO categoryDAO;
	
	@BeforeClass
	public static void executeFirst() {
		
		AnnotationConfigApplicationContext context = new AnnotationConfigApplicationContext();
		context.scan("com.ecomm");
		context.refresh();
		
		categoryDAO = (CategoryDAO)context.getBean("categoryDAO");
	}

	@Ignore
	@Test
	public void addCategoryTest() {
		
		Category category = new Category();
		category.setCategoryName("ArtificialFlowerSet");
		category.setCategoryDesc("Red Color Flowers");
		
		assertTrue("Problem in adding Category",categoryDAO.add(category));
		}
	@Ignore
	@Test
	public void updateCategoryTest() {
		Category category = new Category();
		category.setCategoryId(1);
		category.setCategoryDesc("Wash Basin and Front Glasses with custom design");
		category.setCategoryName("ArtificialFlower");
		
		assertTrue("problem in Updating the Category",categoryDAO.update(category));
	}
	@Ignore
	@Test
	public void deleteCategoryTest() {
		
		Category category = new Category();
		category = categoryDAO.getCategory(2);
		
		assertTrue("Problem in Deleting the Category",categoryDAO.delete(category));
	}
	//@Ignore
	@Test
	public void listCategoriesTest() {
		List<Category> listCategories = categoryDAO.listCategories();
		
		assertTrue("Problem in Listing the Categories",listCategories.size()>0);
		
		for(Category category : listCategories) {
			System.out.print("Category Id : "+category.getCategoryId()+" ");
			System.out.print("Category Name : "+category.getCategoryName()+" ");
			System.out.println("Category Description : "+category.getCategoryDesc());
		}
	}
}

