import ceylon.interop.spring {
	CeylonRepositoryImpl
}

import org.springframework.boot.autoconfigure {
	springBootApplication
}
import org.springframework.cloud.netflix.eureka {
	enableEurekaClient
}
import org.springframework.data.jpa.repository.config {
	enableJpaRepositories
}

springBootApplication
enableEurekaClient
enableJpaRepositories {
	repositoryBaseClass
			= `class CeylonRepositoryImpl`;
}
shared class BarApplication() {}