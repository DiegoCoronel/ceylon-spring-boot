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
import java.lang {
	JLong=Long
}
import org.springframework.beans.factory.annotation {
	autowiredField=autowired__FIELD
}
import bar.repository {
	BarRepository
}
import bar.model {
	Bar
}

restController
shared class PersonController(repository) {
	
	autowiredField
	BarRepository repository;
	
	requestMapping{ method = {post}; consumes = {"application/json"}; produces = {"application/json"};}
	shared JLong create(requestBody Bar bar) {
		assert(! bar.id exists);
		repository.save(bar);
		
		assert(exists id = bar.id);
		return id;
	}
	
	requestMapping{ path={"/{id}"}; method = {get}; produces = {"application/json"};}
	shared Bar? find(pathVariable{ "id"; } JLong id) {
		return repository.findOne(id);
	}

	
}