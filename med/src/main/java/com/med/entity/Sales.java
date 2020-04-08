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
@Table(name="Sales")

public class Sales {
	
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
	
	@Column(name="billedDate")
	@NotNull
	private  Date date;

	public Sales() {}
	public Sales(int id, String medName, int price, String manName, Date date) {
		
		this.id = id;
		this.medName = medName;
		this.price = price;
		this.manName = manName;
		this.date = date;
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

	public Date getDate() {
		return date;
	}

	public void setDate(Date date) {
		this.date = date;
	}

	@Override
	public String toString() {
		return "Sales [id=" + id + ", medName=" + medName + ", price=" + price + ", manName=" + manName + ", date="
				+ date + "]";
	}

}
