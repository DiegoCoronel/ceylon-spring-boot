import org.springframework.web.bind.annotation {
	restController,
	requestMapping,
	requestBody,
	RequestMethod {
		post = \iPOST
	}
}
import org.springframework.beans.factory.annotation {
	autowiredField=autowired__FIELD
}
import reservation.repository {
	ReservationRepository
}
import java.lang {
	JLong=Long
}
import reservation.model {
	Reserve
}
restController
requestMapping({ "/reservation" })
shared class ReservationController(repository) {
	
	autowiredField
	ReservationRepository repository;
	
	requestMapping{ method = {post}; consumes = {"application/json"}; produces = {"application/json"};}
	shared JLong create(requestBody Reserve reserve) {
		assert(! reserve.id exists);
		repository.save(reserve);
		
		assert(exists id = reserve.id);
		return id;
	}
	
	
}