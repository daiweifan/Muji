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
 * 分割图片
 * @author david
 *
 * 2017年4月6日 下午10:04:12
 */
@Entity
@Table(name = "split_image")
@Data
public class SplitImage {
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO) 
	private int id;

	@Column(length=2000)
	private String image;
	
	@CreatedDate
	private Timestamp createdAt;
	
	@LastModifiedDate
	private Timestamp updatedAt;


	
}
