package com.ecomm.test;

import static org.junit.Assert.*;

import java.util.List;

import org.junit.BeforeClass;
import org.junit.Ignore;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.ecomm.dao.SupplierDAO;
import com.ecomm.model.Category;
import com.ecomm.model.Supplier;

public class SupplierDAOTestCase {

	static SupplierDAO supplierDAO;
	
	@BeforeClass
	public static void executeFirst() {
		
		AnnotationConfigApplicationContext context = new AnnotationConfigApplicationContext();
		context.scan("com.ecomm");
		context.refresh();
		
		supplierDAO = (SupplierDAO)context.getBean("supplierDAO");
		
	}
	@Ignore
	@Test
	public void addSupplierTest() {
		
		Supplier supplier = new Supplier();
		supplier.setSupplierName("Common Supplier");
		supplier.setSupplierAddress("Noida,Delhi");
		
		assertTrue("Problem in adding Supplier",supplierDAO.addSupplier(supplier));
		}
	@Ignore
	@Test
	public void updateSupplierTest() {
		
		Supplier supplier = new Supplier();
		supplier.setSupplierId(4);
		supplier.setSupplierName("Designer Supplier");
		supplier.setSupplierAddress("Thane,Mumbai-400011");
		
		assertTrue("Problem in Updating Supplier",supplierDAO.updateSupplier(supplier));
	}
	@Ignore
	@Test
	public void deleteSupplierTest() {
		
		Supplier supplier = new Supplier();
		supplier = supplierDAO.getSupplier(1);
		
		assertTrue("Problem in Deleting the Supplier",supplierDAO.deleteSupplier(supplier));
	}
	//@Ignore
	@Test
	public void listSupplierTest() {
		
		List<Supplier> listSuppliers = supplierDAO.listSuppliers();
		
		assertTrue("Problem in Listing the Suppliers",listSuppliers.size()>0);
		
		for(Supplier supplier : listSuppliers) {
			System.out.print("Supplier Id : "+supplier.getSupplierId()+" ");
			System.out.print("Supplier Name : "+supplier.getSupplierName()+" ");
			System.out.println("Supplier Description : "+supplier.getSupplierAddress());
		}
	}
}
