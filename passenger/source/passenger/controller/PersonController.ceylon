import org.springframework.web.bind.annotation {
	restController,
	requestMapping,
	requestBody,
	RequestMethod {
		post=\iPOST
	}
}
import java.lang {
	JLong=Long
}
import org.springframework.beans.factory.annotation {
	autowiredField=autowired__FIELD
}
import passenger.repository {
	PersonRepository
}
import passenger.model {
	Person
}

restController
requestMapping({ "/person" })
shared class PersonController(repository) {
	
	autowiredField
	PersonRepository repository;
	
	requestMapping{ method = {post}; consumes = {"application/json"}; produces = {"application/json"};}
	shared JLong create(requestBody Person user) {
		assert(! user.id exists);
		repository.save(user);
		
		assert(exists id = user.id);
		return id;
	}

	
}