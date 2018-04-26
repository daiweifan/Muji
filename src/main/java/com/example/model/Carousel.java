package com.example.model;

import java.sql.Timestamp;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

import org.springframework.data.annotation.CreatedDate;
import org.springframework.data.annotation.LastModifiedDate;

import lombok.Data;

/**
 * 轮播图
 * @author david
 *
 */
@Entity
@Table(name = "carousel")
@Data
public class Carousel {
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO) 
	private int id;

	@Column(length=2000)
	private String image;
	
	//大标题
	@Column(length=100)
	private String title;
	
	/**简介**/
	@Column(length=1000)
	private String description;
	
	/**排序号**/
	private int orderNum;
	
	
	@CreatedDate
	private Timestamp createdAt;
	
	@LastModifiedDate
	private Timestamp updatedAt;


	
}
