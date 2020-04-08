package com.med.service;

import java.util.List;

import com.med.entity.Sales;

public interface SalesService {

	public List<Sales> getAllSales();
	public void saveSales(Sales sale);
	public void updateStock(int id);
}
