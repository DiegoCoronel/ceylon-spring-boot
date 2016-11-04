import ceylon.interop.spring {
	CeylonRepositoryImpl
}

import org.springframework.boot.autoconfigure {
	springBootApplication
}
import org.springframework.cloud.netflix.eureka {
	enableEurekaClient
}
import org.springframework.context.annotation {
	configuration
}
import org.springframework.data.jpa.repository.config {
	enableJpaRepositories
}

springBootApplication
enableEurekaClient
shared class BarApplication() {}

configuration
enableJpaRepositories {
	repositoryBaseClass
			= `class CeylonRepositoryImpl`;
}
class FooApplicationConfiguration() {}