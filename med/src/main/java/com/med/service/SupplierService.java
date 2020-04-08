package com.med.service;

import java.util.List;

import com.med.entity.Supplier;

public interface SupplierService  {

	public List<Supplier> getAllSupplier();
	public void saveSupplier(Supplier supplier);
	
}
