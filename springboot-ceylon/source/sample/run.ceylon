import org.springframework.web.bind.annotation {
	restController,
	requestMapping
}
import org.springframework.boot.autoconfigure {
	springBootApplication
}
import org.springframework.boot {
	SpringApplication
}
import ceylon.interop.java {
	javaClass
}
"Run the module `sample`."
shared void run() {
	value springApplication = SpringApplication();
	springApplication.run(javaClass<CeylonSpringApplication>());
}

springBootApplication
class CeylonSpringApplication() {
}

restController
class RestController {
	
	shared new () {
	}
	
	requestMapping ({ "/hello" })
	shared String helloWorld() {
		return "Teste";
	}
}
