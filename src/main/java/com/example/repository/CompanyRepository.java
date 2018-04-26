package com.example.repository;

import org.springframework.data.repository.CrudRepository;

import com.example.model.Company;

/** 
 * 
 * @author david
 *
 * 2017年3月28日 下午9:04:24
 */
public interface CompanyRepository extends CrudRepository<Company, Integer> {
	

}
