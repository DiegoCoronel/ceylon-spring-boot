import org.springframework.web.bind.annotation {
	restController,
	requestMapping,
	requestBody,
	RequestMethod {
		post = \iPOST,
		get = \iGET
	},
	pathVariable
}
import org.springframework.beans.factory.annotation {
	autowiredField=autowired__FIELD
}
import java.lang {
	JLong=Long
}
import foo.model {
	Foo
}
import foo.repository {
	FooRepository
}

restController
shared class FooController(repository) {
	
	autowiredField
	FooRepository repository;
	
	requestMapping{ method = {post}; consumes = {"application/json"}; produces = {"application/json"};}
	shared JLong create(requestBody Foo foo) {
		assert(! foo.id exists);
		repository.save(foo);
		
		assert(exists id = foo.id);
		return id;
	}
	
	requestMapping{ path={"/{id}"}; method = {get}; consumes = {"application/json"}; produces = {"application/json"};}
	shared Foo? find(pathVariable{ "id"; } JLong id) {
		return repository.findOne(id);
	}
	
}