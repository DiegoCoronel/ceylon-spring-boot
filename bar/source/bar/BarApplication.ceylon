import ceylon.interop.spring {
	CeylonRepositoryImpl
}

import org.springframework.boot.autoconfigure {
	springBootApplication
}
import org.springframework.data.jpa.repository.config {
	enableJpaRepositories
}

springBootApplication
enableJpaRepositories {
	repositoryBaseClass
			= `class CeylonRepositoryImpl`;
}
shared class BarApplication() {}