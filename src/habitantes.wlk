import planeta.*

class Persona {
	var property inteligencia = 0
	var property potencia = 20
	var property edad = 0

	method inteligencia() {
		if(edad.between(20, 40)) {
			return 12
		} else {
			return 8
		}
	}
	
	method potencia() { return potencia }
		
	method esDestacada() {
		return edad == 25 or edad == 35
	}		
	
	method valor() {
		return self.potencia() + self.inteligencia()
	}
}

class Atleta inherits Persona {
	var property masaMuscular = 4
	var property cantidadDeTecnicas = 2
	var property dias = 5
	var property kilos = 1
	 
	override method potencia() {
		return masaMuscular * cantidadDeTecnicas
	}
	
	override method esDestacada() {
		return masaMuscular > 5 
	}
	
	method entrenar() {
		return masaMuscular == 1 * (dias)
	}
	
	method aprenderUnaTecnica() {
		return cantidadDeTecnicas + 1
	}
}

class Docente inherits Persona {
	var property cantidadDeCursos = 0
	
	override method inteligencia() {
		return cantidadDeCursos * 2
	} 
	
	override method esDestacada() {
		return cantidadDeCursos > 3
	}
	
	override method valor() {
		return super() + 5
	}
}
