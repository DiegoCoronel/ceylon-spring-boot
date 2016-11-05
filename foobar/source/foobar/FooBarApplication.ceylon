import org.springframework.cloud.netflix.eureka {
	enableEurekaClient
}
import org.springframework.boot.autoconfigure {
	springBootApplication
}
import org.springframework.cloud.netflix.feign {
	enableFeignClients
}
import ceylon.interop.spring {
	CeylonRepositoryImpl
}
import org.springframework.data.jpa.repository.config {
	enableJpaRepositories
}

springBootApplication
enableEurekaClient
enableFeignClients
enableJpaRepositories {
	repositoryBaseClass
			= `class CeylonRepositoryImpl`;
}
shared class FooBarApplication() {}