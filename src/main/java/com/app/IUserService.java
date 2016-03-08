/**
 * 
 */
package com.app;


/**
 * @author Fatih Totrakanlı
 *
 */

//Service interface'i tanımlanmıştır.
//Spring boot kullanırken Service katmanıda kullanılmayabilir ancak bu projede kullanılmıştır.
public interface IUserService {

	   public Iterable<User> listAllUsers();

	   public User getUserById(long id);

	   public User saveUser(User user);
	    
	   public void deleteUser(long id);
	
}
