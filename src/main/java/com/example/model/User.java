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

/** * @author  david:
 * @date 创建时间：2016年5月27日 下午4:36:39
 * @version 1.0
 * @parameter
  * @since 
 * @return 
 */
@Entity
@Table(name = "user")
@Data
public class User {
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO) 
	private int id;

	@Column(length=100)
	private String email;
	
	private String username;
	
	private String password;
	
	private String gender;
	
	private float money;
	
	@CreatedDate
	private Timestamp createdAt;
	
	@LastModifiedDate
	private Timestamp updatedAt;


	
}
