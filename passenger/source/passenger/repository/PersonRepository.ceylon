import java.lang {
	JLong=Long
}
import org.springframework.data.repository {
	CrudRepository
}
import passenger.model {
	Person
}

shared interface PersonRepository satisfies CrudRepository<Person, JLong>{
	
}