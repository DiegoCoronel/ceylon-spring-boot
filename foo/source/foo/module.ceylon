native("jvm")
module foo "1.0.0" {
	import ceylon.interop.java "1.3.0";
	
	shared import maven:"org.springframework.boot:spring-boot-starter-web" "1.3.5.RELEASE";
	shared import maven:"org.springframework.boot:spring-boot-starter-undertow" "1.3.5.RELEASE";
	shared import maven:"org.springframework.boot:spring-boot-starter-data-jpa" "1.3.5.RELEASE";
	
	import maven:"org.springframework.cloud:spring-cloud-starter-eureka" "1.1.2.RELEASE"; 
	
	import maven:"org.postgresql:postgresql" "9.4.1208";
	import maven:"org.liquibase:liquibase-core" "3.4.2";
}
