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

//IUser interface'i CrudRepository sınıfını extend etmiştir.
//Crud Repository sınıfı incelendiğinde hiyerarşik olarak simpleJPARepository sınıfına kadar gitmektedir.
//Yani bu interface crud methodlarını yazmamazı gerektirmeyecek şekilde kendisi hazır yazmış ve kullanıma sunmuş olacaktır.
//Ekstradan bir Repository sınıfı ve Dao işlemlerine gerek kalmamaktadır.
public interface IUser extends CrudRepository<User, Long> {

}
