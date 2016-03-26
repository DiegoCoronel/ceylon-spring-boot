native("jvm")
module gateway "1.0.0" {
	import ceylon.interop.java "1.2.3";
	import "org.springframework.cloud:spring-cloud-starter-zuul" "1.1.0.RC1";
	import "org.springframework.cloud:spring-cloud-starter-eureka" "1.1.0.RC1";
}
