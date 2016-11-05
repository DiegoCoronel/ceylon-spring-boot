import org.springframework.stereotype {
	service
}
import org.springframework.beans.factory.annotation {
	autowired
}
import foobar.external {
	BarClient,
	FooClient
}
import foobar.model {
	FooBar
}
import foobar.repository {
	FooBarRepository
}
import java.util {
	List
}

service
shared class Service(barClient, fooClient, repository) {

	autowired
	BarClient barClient;
	
	autowired
	FooClient fooClient;
	
	autowired
	FooBarRepository repository;
	
	shared void save(FooBar foobar) {
		value bar = barClient.find(foobar.bar);
		assert(bar exists);
		
		value foo = fooClient.find(foobar.foo);
		assert(foo exists);
		
		repository.save(foobar);
	}
	
	shared List<FooBar> findAll() => repository.findAll();
	
}