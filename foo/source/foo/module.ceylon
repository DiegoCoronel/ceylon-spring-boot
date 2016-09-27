native("jvm")
module foo "1.0.0" {
	import ceylon.interop.java "1.3.0";
	
	import        "org.springframework.boot:spring-boot-starter-web" "1.3.5.RELEASE";
	import        "org.springframework.boot:spring-boot-starter-undertow" "1.3.5.RELEASE";
	shared import "org.springframework.boot:spring-boot-starter-data-jpa" "1.3.5.RELEASE";
	
	import "org.springframework.cloud:spring-cloud-starter-eureka" "1.1.2.RELEASE"; 
	
	import "org.postgresql:postgresql" "9.4.1208";
	import "org.liquibase:liquibase-core" "3.4.2";
}
