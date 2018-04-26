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
 * 企业基本信息
 * @author david
 *
 */
@Entity
@Table(name = "company")
@Data
public class Company {
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO) 
	private int id;

	//公司名称
	@Column(length=100)
	private String name;
	
	//公司介绍   富文本编辑
	private String introduction;
	
	/**简介**/
	@Column(length=1000)
	private String description;
	
	//座机
	private String telephone;
	
	//官微
	private String hibuick;
	
	//微博
	private String weibo;
	
	//公司邮箱
	private String email;
	
	//公司地址
	private String address;
	
	//留言提示
	private String messageNotice;
	
	@CreatedDate
	private Timestamp createdAt;
	
	@LastModifiedDate
	private Timestamp updatedAt;


	
}
