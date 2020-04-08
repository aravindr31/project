package com.med.dao;

import java.util.List;

import com.med.entity.Medicine;

public interface medDAO {
  public List<Medicine> getAllMedicines();
  public void saveMedicine(Medicine med);
  public Medicine getMedicine(int id);
  public void deleteMedicine(int id);
  public Medicine searchMedicine(int id);
}
