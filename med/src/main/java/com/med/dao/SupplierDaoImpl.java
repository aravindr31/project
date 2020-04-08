package com.med.dao;

import java.util.List;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.med.entity.Supplier;

@Repository
public class SupplierDaoImpl   implements supplierDAO {

	@Autowired
	SessionFactory factory;

	@Override
	public List<Supplier> getAllSupplier() {
	    Session session =factory.getCurrentSession();
	    Query<Supplier> query =session.createQuery("from Supplier",Supplier.class);
	    List<Supplier> SupplierList=query.getResultList();;
	    return SupplierList;
	}

	@Override
	public void saveSupplier(Supplier supplier) {
		Session session =factory.getCurrentSession();
		session.saveOrUpdate(supplier);
		System.out.println(supplier);
	}
}

