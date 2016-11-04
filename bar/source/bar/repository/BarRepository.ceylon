import java.lang {
	Long
}
import org.springframework.data.repository {
	CrudRepository
}
import bar.model {
	Bar
}

shared interface BarRepository satisfies CrudRepository<Bar,Long> {
}