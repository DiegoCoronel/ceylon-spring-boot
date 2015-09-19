native ("jvm") module ceylon_spring_boot_starter_web "1.0.0" {
	shared import "org.springframework.boot:spring-boot-starter-web" "1.2.5.RELEASE";
	shared import "org.springframework.boot:spring-boot-starter" "1.2.5.RELEASE";
	shared import "org.springframework.boot:spring-boot" "1.2.5.RELEASE";
	shared import "org.springframework.boot:spring-boot-autoconfigure" "1.2.5.RELEASE";
	shared import "org.springframework.boot:spring-boot-starter-logging" "1.2.5.RELEASE";
	shared import "org.springframework.boot:spring-boot-starter-tomcat" "1.2.5.RELEASE";
	
	shared import "org.slf4j:jcl-over-slf4j" "1.7.12";
	shared import "org.slf4j:slf4j-api" "1.7.12";
	shared import "org.slf4j:jul-to-slf4j" "1.7.12";
	shared import "org.slf4j:log4j-over-slf4j" "1.7.12";
	
	shared import "ch.qos.logback:logback-classic" "1.1.3";
	shared import "ch.qos.logback:logback-core" "1.1.3";
	
	shared import "org.yaml:snakeyaml" "1.14";
	
	shared import "org.apache.tomcat.embed:tomcat-embed-core" "8.0.23";
	shared import "org.apache.tomcat.embed:tomcat-embed-el" "8.0.23";
	shared import "org.apache.tomcat.embed:tomcat-embed-logging-juli" "8.0.23";
	shared import "org.apache.tomcat.embed:tomcat-embed-websocket" "8.0.23";
	
	shared import "com.fasterxml.jackson.core:jackson-databind" "2.4.6";
	shared import "com.fasterxml.jackson.core:jackson-annotations" "2.4.6";
	shared import "com.fasterxml.jackson.core:jackson-core" "2.4.6";
	
	shared import "org.hibernate:hibernate-validator" "5.1.3.FINAL";
	
	shared import "javax.validation:validation-api" "1.1.0.FINAL";
	
	shared import "org.jboss.logging:jboss-logging" "3.1.3.GA";
	
	shared import "com.fasterxml:classmate" "1.1.0";
	
	shared import "org.springframework:spring-core" "4.1.7.RELEASE";
	shared import "org.springframework:spring-web" "4.1.7.RELEASE";
	shared import "org.springframework:spring-aop" "4.1.7.RELEASE";
	shared import "org.springframework:spring-beans" "4.1.7.RELEASE";
	shared import "org.springframework:spring-context" "4.1.7.RELEASE";
	shared import "org.springframework:spring-webmvc" "4.1.7.RELEASE";
	shared import "org.springframework:spring-expression" "4.1.7.RELEASE";
	
	shared import "aopalliance:aopalliance" "1.0";
	
	shared import ceylon_spring_boot_starter_web "1.0.0";
}
