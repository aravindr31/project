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
@Table(name="Supplier")

public class Supplier {
	
	@Id
	@Column(name="companyName")
    private String cmpName;
	
	@Column(name="medName")
	@NotEmpty(message="medicine Name cannot be null")
    private String medName;
	
	@Column(name="price")
	@NotNull(message="price cannot be null")
    private int price;
	
	@Column(name="purchaseAmount")
	@NotEmpty(message="purchaseAmount cannot be null")
    private int purchaseAmount;
	
	@Column(name="purchaseDate")
	@NotNull
	private  Date date;

	public Supplier() {}
	public Supplier(String cmpName, String medName, int price, int purchaseAmount, Date date) {
		super();
		this.cmpName = cmpName;
		this.medName = medName;
		this.price = price;
		this.purchaseAmount = purchaseAmount;
		this.date = date;
	}
	public String getCmpName() {
		return cmpName;
	}
	public void setCmpName(String cmpName) {
		this.cmpName = cmpName;
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
	public int getPurchaseAmount() {
		return purchaseAmount;
	}
	public void setPurchaseAmount(int purchaseAmount) {
		this.purchaseAmount = purchaseAmount;
	}
	public Date getDate() {
		return date;
	}
	public void setDate(Date date) {
		this.date = date;
	}
	@Override
	public String toString() {
		return "Supplier [cmpName=" + cmpName + ", medName=" + medName + ", price=" + price + ", purchaseAmount="
				+ purchaseAmount + ", date=" + date + "]";
	}

}
