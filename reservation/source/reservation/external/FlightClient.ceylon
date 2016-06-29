import org.springframework.cloud.netflix.feign {
	feignClient
}
import org.springframework.web.bind.annotation {
	requestMapping,
	RequestMethod {
		_get = \iGET
	},
	pathVariable
}
import java.lang {
	JLong=Long
}

feignClient{ "flight"; path = "flight/flight/"; }
shared interface FlightClient {
	
	requestMapping{ path={"/{id}"}; method = {_get}; consumes = {"application/json"}; produces = {"application/json"};}
	shared formal Airplane? find(pathVariable{ "id"; } JLong id);
	
}

shared class Airplane(
	maximumPlaces, 
	id = null, 
	availablePlaces = maximumPlaces) {
	
	shared JLong|Null id;
	
	shared Integer maximumPlaces;
	
	variable Integer availablePlaces;
	
}
