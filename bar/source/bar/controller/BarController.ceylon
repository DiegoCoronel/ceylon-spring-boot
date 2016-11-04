import bar.model {
	Bar
}
import bar.repository {
	BarRepository
}

import java.lang {
	Iterable
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
shared class PersonController(repository) {
	
	autowired
	BarRepository repository;
	
	requestMapping { 
		method   = [RequestMethod.post]; 
		consumes = ["application/json"]; 
		produces = ["application/json"];
	}
	shared Integer create(requestBody Bar bar) {
		assert(bar.id == 0);
		repository.save(bar);
		
		assert(bar.id != 0);
		return bar.id;
	}
	
	requestMapping { 
		method = [RequestMethod.get]; 
		produces = ["application/json"];
	}
	shared Iterable<Bar> findAll()
			=> repository.findAll();

	requestMapping { 
		path = ["/{id}"]; 
		method = [RequestMethod.get]; 
		produces = ["application/json"];
	}
	shared Bar? find(pathVariable("id") Integer id)
			=> repository.findOne(id);
	
}