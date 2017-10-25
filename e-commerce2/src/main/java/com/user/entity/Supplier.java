package com.user.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

import org.springframework.stereotype.Component;

@Component
@Entity
public class Supplier {
	@GeneratedValue(strategy=GenerationType.AUTO)
	@Id
	private int supplierid;
	
	@Column
	private String suppliername;
	
	@Column
	private String supplieraddress;
    
	
	
	
	
	public int getSupplierid() {
		return supplierid;
	}
	public void setSupplierid(int supplierid) {
		this.supplierid = supplierid;
	}
	public String getSuppliername() {
		return suppliername;
	}
	public void setSuppliername(String suppliername) {
		this.suppliername = suppliername;
	}
	public String getSupplieraddress() {
		return supplieraddress;
	}
	public void setSupplieraddress(String supplieraddress) {
		this.supplieraddress = supplieraddress;
	}
}
