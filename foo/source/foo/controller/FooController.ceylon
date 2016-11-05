import foo.model {
	Foo
}
import foo.repository {
	FooRepository
}

import java.util {
	List
}

import org.springframework.beans.factory.annotation {
	autowired
}
import org.springframework.web.bind.annotation {
	restController,
	requestMapping,
	requestBody,
	RequestMethod,
	pathVariable
}

restController
shared class FooController(repository) {
	
	autowired
	FooRepository repository;
	
	requestMapping { 
		method = [RequestMethod.post]; 
		consumes = ["application/json"]; 
		produces = ["application/json"];
	}
	shared Integer create(requestBody Foo foo) {
		assert(foo.id == 0);
		repository.save(foo);
		
		assert(foo.id != 0);
		return foo.id;
	}
	
	requestMapping { 
		path = ["/{id}"]; 
		method = [RequestMethod.get]; 
		produces = ["application/json"];
	}
	shared Foo? find(pathVariable("id") Integer id)
			=> repository.findOne(id);
	
	requestMapping { 
		method = [RequestMethod.get]; 
		produces = ["application/json"];
	}
	shared List<Foo> findAll()
			=> repository.findAll();
	
}