import habitantes.*

class Planeta {
	var property habitantes = []
	var property museos = []
	
	method delegacionDiplomatica() {
		return habitantes.filter({ h => h.esDestacada() })
	}
	
	method valorInicialDefensa() {
		return habitantes.filter({ h => h.potencia() >= 30 }) 
	}
	
	method esCulto() {
		return museos.all() > 2 and habitantes.all({ h => h.potencia() >= 10 })
	}
	
	method potenciaReal() {
		return habitantes.sum({ h => h.potencia() })
	}
	
}