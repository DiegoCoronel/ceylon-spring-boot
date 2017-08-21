native("jvm")
module foobar "1.0.0" {
	import maven:org.springframework.cloud:"spring-cloud-starter-eureka" "1.3.4.RELEASE";
	import maven:org.springframework.cloud:"spring-cloud-starter-feign" "1.3.4.RELEASE";
	import maven:org.springframework.boot:"spring-boot-starter-data-jpa" "1.5.6.RELEASE";

	import ceylon.interop.spring "1.3.3";
}
