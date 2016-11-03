import org.springframework.web.bind.annotation {
	restController,
	requestMapping,
	requestBody,
	RequestMethod,
	pathVariable
}
import org.springframework.beans.factory.annotation {
	autowired
}
import java.lang {
	Iterable,
	Long
}
import foo.model {
	Foo
}
import foo.repository {
	FooRepository
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
			=> repository.findOne(Long(id));
	
	requestMapping { 
		method = [RequestMethod.get]; 
		produces = ["application/json"];
	}
	shared Iterable<Foo> findAll()
			=> repository.findAll();
	
}