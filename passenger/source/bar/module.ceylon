native("jvm")
module bar "1.0.0" {
	import ceylon.interop.java "1.2.3";
	
	import "org.springframework.boot:spring-boot-starter-web" "1.3.3.RELEASE";
	import "org.springframework.boot:spring-boot-starter-undertow" "1.3.3.RELEASE";
	import "org.springframework.cloud:spring-cloud-starter-eureka" "1.1.0.RC1"; 
	
	shared import "org.springframework.boot:spring-boot-starter-data-jpa" "1.3.3.RELEASE";
	
	import "maven:postgresql:postgresql" "9.1-901-1.jdbc4";
	import "org.liquibase:liquibase-core" "3.4.2";
}
