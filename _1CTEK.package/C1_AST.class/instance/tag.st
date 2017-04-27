accessing
tag
	tag := ( self class asString splitOn: '_' ) last asLowercase.
	^ tag