class Plant {
 const property position
 const property sellValue
 
	method sellValue() {return sellValue}
	method foundYou(someone) { 
		someone.collect(self)
	}
	
	method sellValue(_sellValue) {  sellValue = _sellValue }

	 	
}


class Weath inherits Plant {
 var stage = 0
	override method sellValue() = stage - 1 * 100 	

}

class Corn inherits Plant {
	
	
}

class Tomaco inherits Plant {

	
}

