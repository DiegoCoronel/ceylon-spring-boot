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

feignClient{ "passenger"; path = "passenger/person/"; }
shared interface PassengerClient {
	
	requestMapping{ path={"/{id}"}; method = {get}; consumes = {"application/json"}; produces = {"application/json"};}
	shared formal Person? find(pathVariable{ "id"; } JLong id);
	
}

shared class Person(name, id = null) {
	
	shared JLong|Null id;
	
	shared String name;
	
	string => "Person { id: ``id else "<null>"`` name: ``name`` }";
	
	shared actual Boolean equals(Object other) {
		if(is Person other, exists otherId = other.id, exists thisId = id) {
			return thisId == otherId;
		}
		
		return false;
	}
	
	hash => id?.hash else super.hash;
	
}