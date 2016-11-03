import org.springframework.web.bind.annotation {
	restController,
	requestMapping,
	requestBody,
	RequestMethod
}
import org.springframework.beans.factory.annotation {
	autowired
}
import foobar.model {
	FooBar
}
import foobar.service {
	Service
}
import java.lang {
	Iterable
}

restController
shared class FooBarController(service) {
	
	autowired
	Service service;
	
	requestMapping { 
		method = [RequestMethod.post]; 
		consumes = ["application/json"]; 
		produces = ["application/json"];
	}
	shared Integer create(requestBody FooBar fooBar) {
		assert(fooBar.id == 0);
		service.save(fooBar);
		assert(fooBar.id != 0);
		return fooBar.id;
	}
	
	requestMapping { 
		method = [RequestMethod.get]; 
		produces = ["application/json"];
	}
	shared Iterable<FooBar> findAll() => service.findAll();
	
}