import org.springframework.web.bind.annotation {
	restController,
	requestMapping,
	requestBody,
	RequestMethod {
		post = \iPOST
	}
}
import org.springframework.beans.factory.annotation {
	autowiredField=autowired__FIELD
}
import java.lang {
	JLong=Long
}
import foobar.model {
	FooBar
}
import foobar.service {
	Service
}
restController
shared class FooBarController(service) {
	
	autowiredField
	Service service;
	
	requestMapping{ method = {post}; consumes = {"application/json"}; produces = {"application/json"};}
	shared JLong create(requestBody FooBar fooBar) {
		assert(! fooBar.id exists);
		service.save(fooBar);
		assert(exists id = fooBar.id);
		return id;
	}
	
	
}