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

sequenceGenerator{ name="foobar_sequence"; sequenceName="foobar.foo_bar_id_seq"; allocationSize=1;}
entity table{ schema = "foobar"; } 
shared class FooBar(foo, bar, id = null) {
	
	id generated { strategy = auto; generator="foobar_sequence"; }
	shared JLong|Null id;
	
	shared JLong foo;
	
	shared JLong bar;
	
	shared actual Boolean equals(Object other) {
		if(is FooBar other, exists otherId = other.id, exists thisId = id) {
			return thisId == otherId;
		}
		
		return false;
	}
	
	hash => id?.hash else super.hash;
	
}