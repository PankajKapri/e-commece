package com.user.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Transient;

import org.springframework.stereotype.Component;
import org.springframework.web.multipart.MultipartFile;

@Component
@Entity
public class Product {
	
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private int id;
	@Column
	private String name;
	@Column
	private int prize;
	@Column
	private int quantity;
	@Column
	private String descrption;
	@Column
	private String CustId;
	@Column
	private String SuppId;
	@Transient
	private MultipartFile Image;
	
	public MultipartFile getImage() {
		return Image;
	}
	public void setImage(MultipartFile image) {
		Image = image;
	}
	
	public String getCustId() {
		return CustId;
	}
	public void setCustId(String custId) {
		CustId = custId;
	}
	public String getSuppId() {
		return SuppId;
	}
	public void setSuppId(String suppId) {
		SuppId = suppId;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	
	
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getPrize() {
		return prize;
	}
	public void setPrize(int prize) {
		this.prize = prize;
	}
	public int getQuantity() {
		return quantity;
	}
	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}
	public String getDescrption() {
		return descrption;
	}
	public void setDescrption(String descrption) {
		this.descrption = descrption;
	}
	
	
	

}
