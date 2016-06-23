import org.springframework.data.repository {
	CrudRepository
}
import java.lang {
	JLong=Long
}
import reservation.model {
	Reserve
}
shared interface ReservationRepository satisfies CrudRepository<Reserve, JLong>{
	
	
	
}