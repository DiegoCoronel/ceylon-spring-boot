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

sequenceGenerator{name="airplane_sequence"; sequenceName="flight.airplane_id_seq"; allocationSize=1;}
entity table{ schema = "flight"; } 
shared class Airplane(
	maximumPlaces, 
	id = null, 
	availablePlaces = maximumPlaces) {
	
	id generated { strategy = auto; generator="airplane_sequence";}
	shared JLong|Null id;
	
	notNull
	shared Integer maximumPlaces;
	
	notNull
	variable Integer availablePlaces;
	
}
