package com.example.repository;

import org.springframework.data.repository.CrudRepository;

import com.example.model.CompanyService;

/** 
 * 
 * @author david
 *
 * 2017年4月2日 下午10:27:50
 */
public interface CompanyServiceRepository extends CrudRepository<CompanyService, Integer> {
	

}
