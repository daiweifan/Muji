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
 * 设计师表
 * @author david
 *
 */
@Entity
@Table(name = "author")
@Data
public class Author {
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO) 
	private int id;

	//设计师名称
	@Column(length=100)
	private String name;
	
	//设计师头像
	private String avatar;
	
	//横着的图片
	private String hImage;
	
	//竖着的图片
	private String vImage;
		
	//简介
	private String description;
	
	//人工微信
	private String wechat;
	
	//类型
	private String type;
	
	//职位
	private String position;
	
	//个人封面图片
	private String titleImage;
		
	@ManyToOne
	private Company company;
	
	@CreatedDate
	private Timestamp createdAt;
	
	@LastModifiedDate
	private Timestamp updatedAt;


	
}
