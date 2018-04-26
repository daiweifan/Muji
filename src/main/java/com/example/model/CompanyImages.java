package com.example.model;

import java.sql.Timestamp;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

import org.springframework.data.annotation.CreatedDate;
import org.springframework.data.annotation.LastModifiedDate;

import lombok.Data;

/**
 * 企业图片图
 * @author david
 *
 */
@Entity
@Table(name = "company_images")
@Data
public class CompanyImages {
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO) 
	private int id;

	@Column(length=2000)
	private String image;
	
	//图片说明
	private String note;
	

	@ManyToOne
	private Company company;
	
	
	@CreatedDate
	private Timestamp createdAt;
	
	@LastModifiedDate
	private Timestamp updatedAt;


	
}
