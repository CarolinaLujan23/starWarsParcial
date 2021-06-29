import habitantes.*

class Planeta {
	var property habitantes = []
	var property museos 
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
	
	method fundarMuseo() {
		return museos + 1
	}
	
	method potenciaAparente() {
		return habitantes.find({ h => h.potencia().max() }) * habitantes.all() //??
	}
	
	method necesitaReforzarse() {
		return self.potenciaAparente() / self.potenciaReal() >= 2 
	}
	
	method recibirTributo() { 
		return habitantes.forEach({ h => h.darUnTributo(self)})
	}
	
	method habitantesValiosos() {
		return habitantes.filter({ h => h.valor() >= 40 })
	}
	
	method apaciguarPlaneta(unPlaneta) {
		return habitantes.forEach({ h => h.darUnTributo(unPlaneta)}) //??
	}
}

