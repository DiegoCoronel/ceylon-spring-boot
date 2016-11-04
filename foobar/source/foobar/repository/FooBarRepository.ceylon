import org.springframework.data.repository {
	CrudRepository
}
import java.lang {
	Long
}
import foobar.model {
	FooBar
}
shared interface FooBarRepository satisfies CrudRepository<FooBar,Long> {
}