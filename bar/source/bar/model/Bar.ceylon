import javax.persistence {
	entity,
	id,
	generatedValue,
	GenerationType
}

entity
shared class Bar(name, id = 0) {
	
	id generatedValue { strategy = GenerationType.auto; }
	shared Integer id;
	
	shared String name;
	
}