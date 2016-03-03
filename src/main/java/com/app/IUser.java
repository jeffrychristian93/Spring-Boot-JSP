/**
 * 
 */
package com.app;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

/**
 * @author Fatih Totrakanlı
 *
 */


public interface IUser extends CrudRepository<User, Long> {

}
