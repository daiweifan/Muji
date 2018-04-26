package com.example.model;

import java.sql.Timestamp;
import java.util.Date;

import javax.persistence.Column;
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
 * 案例表
 * @author david
 *
 */
@Entity
@Table(name = "t_case")
@Data
public class Case {
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO) 
	private int id;

	//案例名称
	@Column(length=100)
	private String name;
	
	//案例时间
	@Temporal(TemporalType.DATE)
	private Date createTime;
	
	//封面图片
	private String coverImage;
	
	//详情页封面图片
	private String detailImage;
		
	//案例图片  逗号分隔
	private String images;
	
	//简介
	private String description;
	
	//种类
	@ManyToOne
	private Category category;
	
	//工程造价
	private float projectCode;
	
	//软装造价
	private float softCode;
	
	//风格
	private String style;
	
	//自填关键词
	private String keywords;
	
	//空间设计师
	@ManyToOne
	private Author author;
	
	//软装设计师
	@ManyToOne
	private Author softAuthor;
	
	@CreatedDate
	private Timestamp createdAt;
	
	@LastModifiedDate
	private Timestamp updatedAt;


	
}
