import org.springframework.boot.autoconfigure {
	springBootApplication
}
import org.springframework.cloud.netflix.zuul {
	enableZuulProxy
}
import org.springframework.cloud.netflix.eureka {
	enableEurekaClient
}

springBootApplication
enableZuulProxy
enableEurekaClient
shared class GatewayApplication() {
	
}