import java.lang {
	Long
}
import org.springframework.data.repository {
	CrudRepository
}
import foo.model {
	Foo
}
shared interface FooRepository satisfies CrudRepository<Foo,Long> {
}