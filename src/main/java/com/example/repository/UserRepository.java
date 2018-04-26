package com.example.repository;

import org.springframework.data.repository.CrudRepository;

import com.example.model.User;

/** * @author  david:
 * @date 创建时间：2016年5月30日 上午10:45:19
 * @version 1.0
 * @parameter
  * @since 
 * @return 
 */
public interface UserRepository extends CrudRepository<User, Integer> {
	

	User findByUsername(String name);
}
