package com.example.repository;

import java.util.List;

import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;

import com.example.model.Category;

/** 
 * 
 * @author david
 *
 * 2017年3月28日 下午10:50:03
 */
public interface CategoryRepository extends CrudRepository<Category, Integer> {

	
	
	@Modifying
	@Query("select t from Category t where  parent is null ")
	List<Category> getParent();
	
	@Modifying
	@Query(value="select * from category where parent=?1 order by order_num asc",nativeQuery=true)
	List<Category> getByParent(int parent);
}
