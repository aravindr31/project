
package com.med.dao;

import java.util.List;

import com.med.entity.Supplier;

public interface supplierDAO {
	public List<Supplier> getAllSupplier();
	public void saveSupplier(Supplier supplier);

}
