import foobar.model {
	FooBar
}
import ceylon.interop.spring {
	CeylonRepository
}

shared interface FooBarRepository 
		satisfies CeylonRepository<FooBar,Integer> {
}