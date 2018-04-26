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
 * 留言
 * @author david
 *
 * 2017年4月3日 上午10:33:40
 */
@Entity
@Table(name = "t_message")
@Data
public class Message {
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO) 
	private int id;

	//留言人
	@Column(length=100)
	private String name;
	
	//联系方式
	private String contact;
		
	//内容
	private String content;
	
	//是否回访
	private Boolean flag=false;
	
	@Column(updatable = false)
	@CreatedDate
	private Timestamp createdAt;
	
	@LastModifiedDate
	private Timestamp updatedAt;


	
}
