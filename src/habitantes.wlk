import planeta.*

class Persona {
	var property potencia = 20
	var property edad

	method inteligencia() {
		if(self.edad().between(20, 40)) {
			return 12
		} else {
			return 8
		}
	}
		
	method esDestacada() {
		return self.edad() == 25 or self.edad() == 35
	}		
	
	method valor() {
		return self.potencia() + self.inteligencia()
	}
	
	method darUnTributo(unPlaneta) {  }
}

class Atleta inherits Persona {
	var property masaMuscular = 4
	var property cantidadDeTecnicas = 2
	 
	override method potencia() {
		return self.masaMuscular() * self.cantidadDeTecnicas()
	}
	
	override method esDestacada() {
		return super() or self.masaMuscular() > 5 
	}
	
	method entrenar(dias) {
		return self.masaMuscular() + dias / 5
	}
	
	method aprenderUnaTecnica() {
		return cantidadDeTecnicas + 1
	}
	
	override method darUnTributo(unPlaneta) { 
		unPlaneta.construiMurallas(2)
	}
}

class Docente inherits Persona {
	var property cantidadDeCursos = 0
	
	override method inteligencia() {
		return super() + cantidadDeCursos * 2
	} 
	
	override method esDestacada() {
		return cantidadDeCursos > 3
	}
	
	override method valor() {
		return super() + 5
	}
	
	override method darUnTributo(unPlaneta) { 
		unPlaneta.fundarMuseo()
	}
}

class Soldado inherits Persona {
	var property armas = []
	
	override method potencia(arma) {
		return self.valor() + armas.sum({ a => arma.potencia(self) }) 
	}
	
	override method darUnTributo(unPlaneta) { 
		unPlaneta.construiMurallas(5)
	}
}

class Pistolete {
	var property largo 
	var property potencia 
	
	method potencia(soldado) { 
		if(soldado.edad() > 30) {
			return self.largo() * 3 
		} else {
			return self.largo() * 2
		}
	}
	
}

class Espadon {
	var property peso
	
	method potencia(soldado) {
		if(soldado.edad() < 40) {
			return self.peso() / 2
		} else {
			return 6
		}
	}
}
