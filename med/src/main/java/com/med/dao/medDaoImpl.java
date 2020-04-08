package com.med.dao;


import java.util.List;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.med.entity.Medicine;

@Repository
public class medDaoImpl implements medDAO {

	@Autowired
	SessionFactory factory;

	@Override
	public List<Medicine> getAllMedicines() {
	    Session session =factory.getCurrentSession();
	    Query<Medicine> query =session.createQuery("from Medicine",Medicine.class);
	    List<Medicine> medList=query.getResultList();;
	    return medList;
	}

	@Override
	public void saveMedicine(Medicine med) {
		Session session =factory.getCurrentSession();
		session.saveOrUpdate(med);
		System.out.println(med);
	}

	@Override
	public Medicine getMedicine(int id) {
		Session session =factory.getCurrentSession();
		Medicine medicine=session.get(Medicine.class, id);
		return medicine;
	}

	@Override
	public void deleteMedicine(int id) {
		Session session =factory.getCurrentSession();
		Medicine me=session.get(Medicine.class, id);
		session.delete(me);
		System.out.println("Deleted!");
	}
	@Override
	public Medicine searchMedicine(int id) {
		Session session =factory.getCurrentSession();
		Medicine medicine=session.get(Medicine.class, id);
		return medicine;
	}
}

