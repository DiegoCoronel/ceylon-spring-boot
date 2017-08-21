import java.lang {
	Types {
		classForType
	}
}

import org.springframework.boot {
	SpringApplication
}

"Run the service."
shared void run()
		=> SpringApplication.run(classForType<DiscoveryApplication>());