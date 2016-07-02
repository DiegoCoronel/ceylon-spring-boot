import org.springframework.data.repository {
	CrudRepository
}
import java.lang {
	JLong=Long
}
import foobar.model {
	FooBar
}
shared interface FooBarRepository satisfies CrudRepository<FooBar, JLong>{
	
	
	
}