package com.example.repository;

import java.util.List;

import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;

import com.example.model.Author;

/** 
 * 
 * @author david
 *
 * 2017年3月28日 下午10:50:03
 */
public interface AuthorRepository extends CrudRepository<Author, Integer> {
	
	//根据类型获取设计师
	List<Author> findByType(String type);
	
	
	@Modifying
	@Query("select t from Author t where  name like ?1 ")
	List<Author> searchByName(String name);
	
	
	//随机获取3个设计师
	@Modifying
	@Query(value="select * from author  ORDER BY RAND() LIMIT 3 ",nativeQuery=true)
	List<Author> randAuthors();
}
