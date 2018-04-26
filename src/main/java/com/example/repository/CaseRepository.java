package com.example.repository;

import java.util.List;

import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;

import com.example.model.Case;

/** 
 * 
 * @author david
 *
 * 2017年3月30日 下午8:45:57
 */
public interface CaseRepository extends CrudRepository<Case, Integer> {
	
	@Modifying
	@Query("select t from Case t where  name like ?1 ")
	List<Case> searchByName(String name);
	
	//根据设计师获取案例
	@Modifying
	@Query("select t from Case t where  author.id = ?1 or softAuthor.id = ?1 ")
	List<Case> searchByAuthor(int id);
	
	//根据种类获取案例
	@Modifying
	@Query("select t from Case t where  category.id = ?1 ")
	List<Case> searchByCategory(int id);
	
	//随机获取6个案例
	@Modifying
	@Query(value="select * from t_case  ORDER BY RAND() LIMIT 6 ",nativeQuery=true)
	List<Case> randCases();
}
