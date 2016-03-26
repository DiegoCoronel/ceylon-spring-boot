import org.springframework.boot.autoconfigure {
	springBootApplication
}
import org.springframework.cloud.netflix.feign {
	enableFeignClients
}
import org.springframework.cloud.netflix.eureka {
	enableEurekaClient
}

springBootApplication
enableEurekaClient
enableFeignClients
shared class PassengerApplication() {
	
}