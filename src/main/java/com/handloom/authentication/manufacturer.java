package com.handloom.authentication;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Lob;
import javax.persistence.SequenceGenerator;

@Entity
public class manufacturer {
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int id;
	private String prodname;
	private String prodtype;
	private String prodplace;
	private double price;
    private String image;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getProdname() {
		return prodname;
	}
	public void setProdname(String prodname) {
		this.prodname = prodname;
	}
	public String getProdtype() {
		return prodtype;
	}
	public void setProdtype(String prodtype) {
		this.prodtype = prodtype;
	}
	public String getProdplace() {
		return prodplace;
	}
	public void setProdplace(String prodplace) {
		this.prodplace = prodplace;
	}
	public double getPrice() {
		return price;
	}
	public void setPrice(double price) {
		this.price = price;
	}
	public String getImage() {
		return image;
	}
	public void setImage(String filename) {
		this.image = filename;
	}
	
	
}
