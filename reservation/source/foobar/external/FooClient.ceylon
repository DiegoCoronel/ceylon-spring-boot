import org.springframework.cloud.netflix.feign {
	feignClient
}
import org.springframework.web.bind.annotation {
	requestMapping,
	RequestMethod {
		get = \iGET
	},
	pathVariable
}
import java.lang {
	JLong=Long
}

feignClient{ "foo"; path = "foo/"; }
shared interface FooClient {
	
	requestMapping{ path={"/{id}"}; method = {get}; consumes = {"application/json"}; produces = {"application/json"};}
	shared formal Foo? find(pathVariable{ "id"; } JLong id);
	
}

shared class Foo(
	maximumPlaces, 
	id = null, 
	availablePlaces = maximumPlaces) {
	
	shared JLong|Null id;
	
	shared Integer maximumPlaces;
	
	variable Integer availablePlaces;
	
}
