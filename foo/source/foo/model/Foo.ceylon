import java.lang {
	JLong=Long
}

import javax.persistence {
	id=id__FIELD,
	generated=generatedValue__FIELD,
	GenerationType {
		auto
	},
	sequenceGenerator,
	table,
	entity
}
import javax.validation.constraints {
	notNull=notNull__FIELD
}

sequenceGenerator{name="foo_sequence"; sequenceName="foo.foo_id_seq"; allocationSize=1;}
entity table{ schema = "foo"; } 
shared class Foo(
	maximumPlaces, 
	id = null, 
	availablePlaces = maximumPlaces) {
	
	id generated { strategy = auto; generator="foo_sequence";}
	shared JLong|Null id;
	
	notNull
	shared Integer maximumPlaces;
	
	notNull
	variable Integer availablePlaces;
	
}
