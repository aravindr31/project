package com.med.service;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.med.dao.salesDAO;
import com.med.entity.Sales;

@Service
public class SalesServiceImpl  implements SalesService {

	@Autowired
	salesDAO salesDao;
	
	@Override
	@Transactional
	public List<Sales> getAllSales() {
		
		return salesDao.getAllSales();
	}

	@Override
	@Transactional
	public void saveSales(Sales sale) {
		salesDao.saveSales(sale);
		
	}

	@Override
	@Transactional
	public void updateStock(int id) {
		salesDao.updateStock(id);
	}

	

}
