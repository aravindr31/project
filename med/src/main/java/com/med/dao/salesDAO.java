package com.med.dao;

import java.util.List;

import com.med.entity.Sales;

public interface salesDAO {
	public List<Sales> getAllSales();
	public void saveSales(Sales sale);
	public void updateStock(int id);
}
