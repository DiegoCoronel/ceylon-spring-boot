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

sequenceGenerator{ name="bar_sequence"; sequenceName="bar.bar_id_seq"; allocationSize=1;}
entity table{ schema = "bar"; } 
shared class Bar(name, id = null) {
	
	id generated { strategy = auto; generator="bar_sequence";}
	shared JLong|Null id;
	
	shared String name;
	
	string => "Bar { id: ``id else "<null>"`` name: ``name`` }";
	
	shared actual Boolean equals(Object other) {
		if(is Bar other, exists otherId = other.id, exists thisId = id) {
			return thisId == otherId;
		}
		
		return false;
	}
	
	hash => id?.hash else super.hash;
	
}