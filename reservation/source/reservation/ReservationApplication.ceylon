import org.springframework.cloud.netflix.eureka {
	enableEurekaClient
}
import org.springframework.boot.autoconfigure {
	springBootApplication
}
import org.springframework.cloud.netflix.feign {
	enableFeignClients
}
springBootApplication
enableEurekaClient
enableFeignClients
shared class ReservationApplication() {}