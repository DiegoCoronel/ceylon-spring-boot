import org.springframework.boot {
	SpringApplication
}

import ceylon.interop.java {
	javaClass
}

"Run the module `foo`."
shared void run() {
	SpringApplication.run(javaClass<FooApplication>());
}