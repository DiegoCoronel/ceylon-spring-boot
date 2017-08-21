native("jvm")
module discovery "1.0.0" {
	shared import maven:org.springframework.cloud:"spring-cloud-starter-eureka-server" "1.3.4.RELEASE";
	import java.base "7";
}
