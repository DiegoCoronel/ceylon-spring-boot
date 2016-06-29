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
import flight.model {
	Airplane
}
import flight.repository {
	AirplaneRepository
}

restController
requestMapping({ "/flight" })
shared class FlightController(repository) {
	
	autowiredField
	AirplaneRepository repository;
	
	requestMapping{ method = {post}; consumes = {"application/json"}; produces = {"application/json"};}
	shared JLong create(requestBody Airplane airplane) {
		assert(! airplane.id exists);
		repository.save(airplane);
		
		assert(exists id = airplane.id);
		return id;
	}
	
	requestMapping{ path={"/{id}"}; method = {get}; consumes = {"application/json"}; produces = {"application/json"};}
	shared Airplane? find(pathVariable{ "id"; } JLong id) {
		return repository.findOne(id);
	}
	
}