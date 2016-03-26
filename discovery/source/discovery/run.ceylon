import org.springframework.boot {
	SpringApplication
}
import ceylon.interop.java {
	javaClass
}
"Run the module `discovery`."
shared void run() {
	value springApplication = SpringApplication();
	springApplication.run(javaClass<DiscoveryApplication>());
}