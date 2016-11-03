import org.springframework.boot {
	SpringApplication
}
import ceylon.interop.java {
	javaClass
}
"Run the service."
shared void run()
		=> SpringApplication.run(javaClass<DiscoveryApplication>());