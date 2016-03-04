# Açıklama

Write a web app with using Spring Boot,there will be User registration with fields
"name" , "surname" and "address" and you will display these informantions in a
grid.Also we could do UPDATE,DELETE,CREATE,READ operations in grid.

Projede, Spring Boot ve H2 Database kullanılarak CRUD (Create, Update, Read, Delete) işlemleri
gerçekleştirilmiştir.

Spring Boot, Spring tabanlı uygulama geliştirmenin en hızlı ve kolay yolu olması amacıyla geliştirilmiş
bir frameworktür. Spring Boot sayesinde boilerplate yani basmakalıp kodlardan sıyrılıp, sadece ihtiyacımız
olan kodu yazabiliriz. Spring Boot web sunucusu olarak Embedded Tomcat ve diğer birçok ek  özellikle beraber gelmektedir.
Proje içerisinde bulunan Application sınıfının çalıştırılmasıyla ayağa kalkmaktadır. Gömülü şekilde Tomcat bulundurduğu
için ekstaradan sunucu oluşturmaya gerek kalmamaktadır.

H2 Database, Java ile yazılmış “Open Source” bir SQL database’dir. Memory bazlı database olduğu için uygulama sonladığında
proje içersindeki verilerde kaybolmaktadır.

# Proje Maven Projesidir

Projeyi indirdikten sonra kullandığınız IDE ' e import edip "clean" "install" komutuyla çalıştırabilirsiniz.
Projenin ayağa kalkması için Application sınıfının "run" edilmesi gerekmektedir.

Veya

"cmd" ile projeyi indirdiğiniz directory'e gidip

      mvn clean install 

komutunu çalıştırıp,

      java -jar target/myapp-1.0-SNAPSHOT.jar

"myapp" proje adı olacak şekilde düzenleyip compile edip projeyi ayağa kaldırabilirsiniz.

Proje ayağa kalktıktan sonra;

      http://localhost:8080/index 

adresinden CRUD işlemlerine başlayabilirsiniz.
  
