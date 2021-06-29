import habitantes.*

class Planeta {
	var property habitantes = []
	var property museos = []
	var property longitudMurallas
	
	method delegacionDiplomatica() {
		return habitantes.filter({ h => h.esDestacada() })
	}
	
	method valorInicialDefensa() {
		return habitantes.filter({ h => h.potencia() >= 30 }) 
	}
	
	method esCulto() {
		return museos.size() > 2 and habitantes.all({ h => h.inteligencia() >= 10 })
	}
	
	method potenciaReal() {
		return habitantes.sum({ h => h.potencia() })
	}
	
	method construirMurallas(longitud) {
		return longitudMurallas + longitud
	}
	
	method fundarMuseo(museo) {
		return museos.add(museo)
	}
	
	method potenciaAparente() {
		return habitantes.find({ h => h.potencia().max() }) * habitantes.all() //??
	}
	
	method necesitaReforzarse() {
		return self.potenciaAparente() * 2 > self.potenciaReal()  
	}
	
	method recibirAtributo(atributo) {  }
	
	method habitantesValiosos() {
		return habitantes.filter({ h => h.valor() >= 40 })
	}
	
	method apaciguarPlaneta(unaPlaneta, otroPlaneta) {	}
}

