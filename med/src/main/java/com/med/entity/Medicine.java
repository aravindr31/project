package com.med.entity;


import java.sql.Date;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.validation.constraints.Min;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Pattern;

import org.hibernate.validator.constraints.Email;
import org.hibernate.validator.constraints.NotEmpty;


@Entity
@Table(name="Pharma_Management")
public class Medicine {
	@Id
	@Column(name="med_id")
    private int id;
	
	@Column(name="medName")
	@NotEmpty(message="medName cannot be null")
    private String medName;
	
	@Column(name="price")
	@NotNull(message="price cannot be null")
    private int price;
	
	@Column(name="manName")
	@NotEmpty(message="manName cannot be null")
    private String manName;
	
	@Column(name="stock")
	/*@NotEmpty(message="price cannot be null")*/
    private int stock;
	
	
	@Column(name="manDate")
	@NotNull
	
	private  Date manDate;
	
	@Column(name="expDate")
	@NotNull
	private  Date expDate;


   
	public Medicine() {}
	public Medicine(int id,String medName,int price, String manName, int stock, Date manDate, Date expDate) {
		this.id=id;
		this.medName = medName;
		this.price=price;
		this.manName = manName;
		this.stock = stock;
		this.manDate = manDate;
		this.expDate = expDate;
		
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getMedName() {
		return medName;
	}
	public void setMedName(String medName) {
		this.medName = medName;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	public String getManName() {
		return manName;
	}
	public void setManName(String manName) {
		this.manName = manName;
	}
	public int getStock() {
		return stock;
	}
	public void setstock(int stock) {
		this.stock = stock;
	}
	
	public Date getManDate() {
		return manDate;
	}
	public void setManDate(Date manDate) {
		this.manDate = manDate;
	}
	public Date getExpDate() {
		return expDate;
	}
	public void setExpDate(Date expDate) {
		this.expDate = expDate;
	}
	@Override
	public String toString() {
		return "Medicine [id=" + id + ", medName=" + medName + ", price=" + price + ", manName=" + manName
				+ ", stock=" + stock + ", manDate=" + manDate + ", expDate=" + expDate + "]";
	}
}
    
