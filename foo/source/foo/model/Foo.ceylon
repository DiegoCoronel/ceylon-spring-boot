import javax.persistence {
	id,
	generatedValue,
	GenerationType,
	entity
}

entity
shared class Foo(
	maximumPlaces,
	availablePlaces = maximumPlaces) {
	
	id generatedValue
	shared late Integer id;
	
	shared Integer maximumPlaces;
	
	variable Integer availablePlaces;
}
