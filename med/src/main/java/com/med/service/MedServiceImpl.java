package com.med.service;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.med.dao.medDAO;
import com.med.entity.Medicine;

@Service
public class MedServiceImpl implements MedService {

	@Autowired
	medDAO medDao;
	
	@Override
	@Transactional
	public List<Medicine> getAllMedicines() {
		
		return medDao.getAllMedicines();
	}

	@Override
	@Transactional
	public void saveMedicine(Medicine emp) {
		medDao.saveMedicine(emp);
		
	}

	@Override
	@Transactional
	public Medicine getMedicine(int id) {
		return medDao.getMedicine(id);
	}

	@Override
	@Transactional
	public void deleteMedicine(int id) {
		medDao.deleteMedicine(id);
	}
	@Override
	@Transactional
	public Medicine searchMedicine(int id) {
		return medDao.searchMedicine(id);
	}

}
