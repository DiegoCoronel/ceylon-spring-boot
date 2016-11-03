import javax.persistence {
	entity,
	id,
	generatedValue,
	GenerationType
}

entity
shared class Bar(name) {
	
	id generatedValue
	shared late Integer id;
	
	shared String name;
	
}