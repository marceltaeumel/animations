tests
test08Registration

	| a1 |
	a1 := AnimAnimation new duration: 10.
	sut add: a1.

	sut start.
	self wait: 0.
	
	self assert: a1 isRegistered.
	self assert: sut isRegistered.
	
	sut unregister.
	self wait: 0.
	self deny: a1 isRegistered.