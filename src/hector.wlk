import plants.*
import wollok.game.*

object hector {
	var gold
	const harvested = []
	var property position = game.at(3,3)
	
//Consultas:	
	method image() {return "player.png" }

	method wealth() { 
		return gold		
	}
	
	method plantsReadyToSell() { 
		return harvested.count()
	}

	method harvestedValue() {
		return harvested.sum({aPlant => aPlant.sellValue()})
	}

//Acciones:
	method plantWeath() {
		if (.alreadyPlanted()) { throw new Exception("I already planted something here, dude!") }
		else new Weath(position)		
	}

	method harvest() {  
		position.allElements().forEach({anElement => if (anElement != self) anElement.foundYou(self)})
	}
	
    method sell() {
    	gold = self.harvestedValue()
    	harvested.clear() 
    }
	
	method move(nuevaPosicion) {
		self.position(nuevaPosicion) 
	}	
	
}

