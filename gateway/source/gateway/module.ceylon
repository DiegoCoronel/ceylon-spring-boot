native("jvm")
module gateway "1.0.0" {
	import maven:org.springframework.cloud:"spring-cloud-starter-zuul" "1.3.4.RELEASE";
	import maven:org.springframework.cloud:"spring-cloud-starter-eureka" "1.3.4.RELEASE";

	import java.base "7";
}
