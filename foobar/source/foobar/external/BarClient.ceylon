import org.springframework.cloud.netflix.feign {
	feignClient
}
import org.springframework.web.bind.annotation {
	requestMapping,
	RequestMethod,
	pathVariable
}

feignClient{ "bar"; path = "bar/"; }
shared interface BarClient {
	
	requestMapping { 
		path = ["/{id}"]; 
		method = [RequestMethod.get]; 
		consumes = ["application/json"]; 
		produces = ["application/json"];
	}
	shared formal Bar? find(pathVariable("id") Integer id);
	
}

shared class Bar(name, id = 0) {
	
	shared Integer id;
	
	shared String name;
	
	string => "Person { id: ``id`` name: ``name`` }";
	
}