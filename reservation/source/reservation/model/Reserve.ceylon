import javax.persistence {
	sequenceGenerator,
	table,
	entity,
	id=id__FIELD,
	generated=generatedValue__FIELD,
	GenerationType { 
		auto = \iAUTO
	}
}
import java.lang {
	JLong=Long
}

sequenceGenerator{ name="reserve_sequence"; sequenceName="reservation.reserve_id_seq"; allocationSize=1;}
entity table{ schema = "reservation"; } 
shared class Reserve(id, passenger, flight) {
	
	id generated { strategy = auto; generator="reserve_sequence"; }
	shared JLong|Null id;
	
	shared JLong passenger;
	
	shared JLong flight;
	
	shared actual Boolean equals(Object other) {
		if(is Reserve other, exists otherId = other.id, exists thisId = id) {
			return thisId == otherId;
		}
		
		return false;
	}
	
	hash => id?.hash else super.hash;
	
	
}