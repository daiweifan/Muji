package com.example.repository;

import org.springframework.data.repository.CrudRepository;

import com.example.model.Message;

/** 
 * 
 * @author david
 *
 * 2017年3月28日 下午10:50:03
 */
public interface MessageRepository extends CrudRepository<Message, Integer> {
	

}
