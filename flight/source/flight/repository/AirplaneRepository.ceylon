import java.lang {
	JLong=Long
}
import org.springframework.data.repository {
	CrudRepository
}
import flight.model {
	Airplane
}
shared interface AirplaneRepository satisfies CrudRepository<Airplane, JLong>{
	
}