package com.example.model;

import java.sql.Timestamp;
import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

import org.springframework.data.annotation.CreatedDate;
import org.springframework.data.annotation.LastModifiedDate;

import lombok.Data;

/**
 * 企业工艺表
 * @author david
 *
 */
@Entity
@Table(name = "company_craft")
@Data
public class CompanyCraft {
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO) 
	private int id;

	//工艺名称
	private String name;
	
	//简介
	private String description;
	
	@Temporal(TemporalType.DATE)
	private Date createTime;
	
	
	//工艺图片
	private String image;
	
	@ManyToOne
	private Company company;
	
	
	@CreatedDate
	private Timestamp createdAt;
	
	@LastModifiedDate
	private Timestamp updatedAt;


	
}
