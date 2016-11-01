import org.springframework.boot {
	SpringApplication
}
import ceylon.interop.java {
	javaClass
}

"Run the module `passenger`."
shared void run() {
	SpringApplication.run(javaClass<BarApplication>());
}