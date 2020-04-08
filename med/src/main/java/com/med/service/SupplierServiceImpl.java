package com.med.service;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.med.dao.supplierDAO;
import com.med.entity.Supplier;

@Service
public class SupplierServiceImpl  implements SupplierService {

	@Autowired
	supplierDAO supplierDao;
	
	@Override
	@Transactional
	public List<Supplier> getAllSupplier() {
		
		return supplierDao.getAllSupplier();
	}

	@Override
	@Transactional
	public void saveSupplier(Supplier supplier) {
		supplierDao.saveSupplier(supplier);
		
	}

}
