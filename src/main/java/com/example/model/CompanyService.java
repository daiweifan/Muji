package com.example.model;

import java.sql.Timestamp;

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
 * 企业服务表
 * @author david
 *
 */
@Entity
@Table(name = "company_service")
@Data
public class CompanyService {
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO) 
	private int id;

	//服务名称
	private String name;
	
	//服务图片
	private String image;
	
	//简介
	private String description;
	
	//报价
	private float price;
	
	@ManyToOne
	private Company company;
	
	
	@CreatedDate
	private Timestamp createdAt;
	
	@LastModifiedDate
	private Timestamp updatedAt;


	
}
