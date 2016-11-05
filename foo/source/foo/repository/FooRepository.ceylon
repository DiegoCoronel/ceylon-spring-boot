import ceylon.interop.spring {
	CeylonRepository
}

import foo.model {
	Foo
}

shared interface FooRepository
        satisfies CeylonRepository<Foo,Integer> {}