import bar.model {
	Bar
}

import ceylon.interop.spring {
	CeylonRepository
}

shared interface BarRepository
		satisfies CeylonRepository<Bar,Integer> {}