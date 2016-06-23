import org.springframework.web.bind.annotation {
	restController,
	requestMapping
}
import org.springframework.beans.factory.annotation {
	autowiredField=autowired__FIELD
}
import reservation.repository {
	ReservationRepository
}
restController
requestMapping({ "/reservation" })
shared class ReservationController(repository) {
	
	autowiredField
	ReservationRepository repository;
	
	
	
}