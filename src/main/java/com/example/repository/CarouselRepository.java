package com.example.repository;

import java.util.List;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;

import com.example.model.Carousel;

/** 
 * 
 * @author david
 *
 * 2017年4月7日 下午10:38:05
 */
public interface CarouselRepository extends CrudRepository<Carousel, Integer> {
	
	@Query("select t from Carousel t  order by t.orderNum asc")
	List<Carousel> findAllByOrderNum();
}
