import org.springframework.boot {
	SpringApplication
}
import ceylon.interop.java {
	javaClass
}
"Run the module `gateway`."
shared void run() {
	SpringApplication.run(javaClass<GatewayApplication>());
}