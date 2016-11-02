import javax.persistence {
	entity,
	id,
	generatedValue,
	GenerationType
}

entity 
shared class FooBar(foo, bar, id = 0) {
	
	id generatedValue { strategy = GenerationType.auto; }
	shared Integer id;
	
	shared Integer foo;
	
	shared Integer bar;
	
}