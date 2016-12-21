import javax.persistence {
	entity,
	id,
	generatedValue
}

entity
shared class Bar(name) {
	
	id generatedValue
	shared late Integer id;
	
	shared String name;
	
	shared String? city =>
			"Berlin";
}