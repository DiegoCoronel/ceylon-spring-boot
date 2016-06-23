import org.springframework.boot {
	SpringApplication
}

import ceylon.interop.java {
	javaClass
}

"Run the module `flight`."
shared void run() {
	value springApplication = SpringApplication();
	springApplication.run(javaClass<ReservationApplication>());
}