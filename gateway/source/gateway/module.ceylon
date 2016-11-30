native("jvm")
module gateway "1.0.0" {
	import ceylon.interop.java "1.3.0";
	import maven:org.springframework.cloud:"spring-cloud-starter-zuul" "1.2.2.RELEASE";
	import maven:org.springframework.cloud:"spring-cloud-starter-eureka" "1.2.2.RELEASE";
}
