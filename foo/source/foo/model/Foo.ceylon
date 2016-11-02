import javax.persistence {
	id,
	generatedValue,
	GenerationType,
	entity
}

entity
shared class Foo(
	maximumPlaces, 
	id = 0, 
	availablePlaces = maximumPlaces) {
	
	id generatedValue { strategy = GenerationType.auto; }
	shared Integer id;
	
	shared Integer maximumPlaces;
	
	variable Integer availablePlaces;
}
