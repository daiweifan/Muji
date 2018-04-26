package com.example.repository;

import org.springframework.data.repository.CrudRepository;

import com.example.model.SplitImage;

/** 
 * 首页分割图
 * @author david
 *
 * 2017年4月6日 下午10:05:54
 */
public interface SplitImageRepository extends CrudRepository<SplitImage, Integer> {
	

}
