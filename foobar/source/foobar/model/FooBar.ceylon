import javax.persistence {
	entity,
	id,
	generatedValue
}

entity 
shared class FooBar(foo, bar) {
	
	id generatedValue
	shared late Integer id;
	
	shared Integer foo;
	
	shared Integer bar;
	
}