import org.springframework.stereotype {
	service
}
import org.springframework.beans.factory.annotation {
	autowired = autowired__FIELD
}
import reservation.external {
	PassengerClient,
	FlightClient
}
import reservation.model {
	Reserve
}
import reservation.repository {
	ReservationRepository
}

service
shared class Service(passengerClient, flightClient, repository) {

	autowired
	PassengerClient passengerClient;
	
	autowired
	FlightClient flightClient;
	
	autowired
	ReservationRepository repository;
	
	shared void save(Reserve reserve) {
		value person = passengerClient.find(reserve.passenger);
		assert(person exists);
		
		value airplane = flightClient.find(reserve.flight);
		assert(airplane exists);
		
		repository.save(reserve);
	}
	
}