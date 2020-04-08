package com.med.dao;

import java.util.List;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.med.entity.Sales;
import com.med.entity.Medicine;
@Repository
public class SalesDaoImpl  implements salesDAO {

	@Autowired
	SessionFactory factory;

	@Override
	public List<Sales> getAllSales() {
	    Session session =factory.getCurrentSession();
	    Query<Sales> query =session.createQuery("from Sales",Sales.class);
	    List<Sales> salesList=query.getResultList();;
	    return salesList;
	}

	@Override
	public void saveSales(Sales sale) {
		Session session =factory.getCurrentSession();
		session.saveOrUpdate(sale);
		System.out.println(sale);
	}

	@Override
	public void updateStock(int id) {
		Session session =factory.getCurrentSession();
		Medicine med1=session.get(Medicine.class, id);
	 
		
		Medicine med2=new Medicine(med1.getId(),med1.getMedName(),
				med1.getPrice(),med1.getManName(), (med1.getStock()-1),
				med1.getManDate(),med1.getExpDate());
	
		session.delete(med1);
		session.saveOrUpdate(med2);
		System.out.println(med2);
	}


}

