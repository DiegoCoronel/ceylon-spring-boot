import org.springframework.cloud.netflix.feign {
	feignClient
}
import org.springframework.web.bind.annotation {
	requestMapping,
	RequestMethod,
	pathVariable
}

feignClient{ "foo"; path = "foo/"; }
shared interface FooClient {
	
	requestMapping { 
		path = ["/{id}"]; 
		method = [RequestMethod.get]; 
		consumes = ["application/json"]; 
		produces = ["application/json"];
	}
	shared formal Foo? find(pathVariable("id") Integer id);
	
}

shared class Foo(
	maximumPlaces, 
	id = 0, 
	availablePlaces = maximumPlaces) {
	
	shared Integer id;
	
	shared Integer maximumPlaces;
	
	variable Integer availablePlaces;
	
}
