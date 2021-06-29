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
}

class Atleta inherits Persona {
	var property masaMuscular = 4
	var property cantidadDeTecnicas = 2
	 
	override method potencia() {
		return masaMuscular * cantidadDeTecnicas
	}
	
	override method esDestacada() {
		return super() or masaMuscular > 5 
	}
	
	method entrenar(dias) {
		return masaMuscular + dias / 5
	}
	
	method aprenderUnaTecnica() {
		return cantidadDeTecnicas + 1
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
}

class Soldado inherits Persona {
	var property armas = []
	
	override method potencia(arma) {
		return self.valor() + armas.sum({ a => arma.potencia() }) 
	}
}

class Pistolete {
	var property largo 
	var property potencia 
	
	method potencia(soldado) { 
		if(soldado.edad() > 30) {
			return largo * 3 
		} else {
			return largo * 2
		}
	}
	
}

class Espadon {
	var property peso
	
	method potencia(soldado) {
		if(soldado.edad() < 40) {
			return peso / 2
		} else {
			return 6
		}
	}
}
