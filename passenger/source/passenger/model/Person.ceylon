import javax.persistence {
	entity,
	id = id__FIELD, 
	generated = generatedValue__FIELD, 
	GenerationType { 
		auto = \iAUTO
	},
	table,
	sequenceGenerator
}

import java.lang {
	JLong = Long
}

sequenceGenerator{name="person_sequence"; sequenceName="passenger.person_id_seq"; allocationSize=1;}
entity table{ schema = "passenger"; } 
shared class Person(name, id = null) {
	
	id generated { strategy = auto; generator="person_sequence";}
	shared JLong|Null id;
	
	shared String name;
	
	string => "Person { id: ``id else "<null>"`` name: ``name`` }";
	
	shared actual Boolean equals(Object other) {
		if(is Person other, exists otherId = other.id, exists thisId = id) {
			return thisId == otherId;
		}
		return false;
	}
	
	hash => id?.hash else 37;
	
}