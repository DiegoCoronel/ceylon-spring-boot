import javax.persistence {
	entity,
	id,
	generatedValue
}
import com.fasterxml.jackson.annotation {
	jsonAutoDetect,
	JsonAutoDetect
}

jsonAutoDetect {
	fieldVisibility = JsonAutoDetect.Visibility.any;
	getterVisibility = JsonAutoDetect.Visibility.none;
	setterVisibility = JsonAutoDetect.Visibility.none; }
entity
shared class Bar(name) {
	
	id
	generatedValue
	shared late Integer id;
	
	shared String name;
	
	shared String? city =>
		"Berlin";
}
