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
import java.lang {
	JLong=Long
}
import reservation.model {
	Reserve
}
import reservation.service {
	Service
}
restController
requestMapping({ "/reservation" })
shared class ReservationController(service) {
	
	autowiredField
	Service service;
	
	requestMapping{ method = {post}; consumes = {"application/json"}; produces = {"application/json"};}
	shared JLong create(requestBody Reserve reserve) {
		assert(! reserve.id exists);
		service.save(reserve);
		assert(exists id = reserve.id);
		return id;
	}
	
	
}