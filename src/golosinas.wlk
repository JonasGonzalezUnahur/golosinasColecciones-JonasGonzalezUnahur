
object bombon {
	const precio = 5
	var peso = 15
	method precio()= precio
	method peso()= peso
	method gusto() = frutilla
	method libreDeGluten() = false
	method recibirMordisco(){
		peso = (peso * 0.8) - 1
	}
}

object alfajor {
	const precio = 12
	var peso = 300
	method precio() = precio
	method peso() = peso
	method gusto() = chocolate
	method libreDeGluten() = false
	method recibirMordisco(){
		peso = peso * 0.8
	}
}

object caramelo{
	var peso = 5
	method precio() = 1
	method peso() = peso
	method gusto() = frutilla
	method libreDeGlute() = true
	method recibirMordisco(){
		peso = peso -1
	}
}

object chupetin{
	var peso = 7
	method precio() = 2 
	method peso() = peso
	method gusto() = naranja
	method libreDeGluten() = true
	method recibirMordisco(){
		peso = peso - if(peso > 2) peso * 0.9 else peso
	}
}

object oblea{
	var peso = 250
	method precio() = 5
	method peso() = peso
	method gusto() = vainilla
	method libreDeGluten() = false
	method recibirMordisco(){
		peso = peso - if(peso > 70) peso * 0.5 else peso * 0.25
	}
}

object chocolatin{
	const precio = 0.50 * pesoInicial
	var peso = 0
	var pesoInicial = 0
	method precio() = precio
	method peso() = peso
	method gusto() = chocolate
	method libreDeGluten() = false
	method asignarPeso(nuevoPeso){
		peso = nuevoPeso
		pesoInicial = nuevoPeso
	}
	method recibirMordisco(){
	    peso = peso - 2	
	}	
}

object golosinaBanada{
	var golosinaDeBase = chocolatin
	var peso = golosinaDeBase.peso() + 4
	const precio = golosinaDeBase.precio() +2
	var primerMordisco = true
	method precio() = precio
	method peso() =peso
	method gusto() = golosinaDeBase.gusto()
	method libreDeGluten() = golosinaDeBase.libreDeGluten()
	method cambiarBase(nuevaBase){
		golosinaDeBase = nuevaBase
	}
	method recibirMordisco(){
		peso = golosinaDeBase.recibirMordisco() + if (primerMordisco) 2 else 2
		if (primerMordisco){
			primerMordisco = false
		}
	}
}

object pastillaTuttiFrutti{
	const peso = 5
	//const precio = 
	var libreDeGluten = true
	var gusto = frutilla
	method peso() = peso
	method precio() = if(libreDeGluten) 7 else 10
	method gusto() = gusto
	method libreDeGluten() = libreDeGluten
	method cambiarGluten(){
		if (libreDeGluten){
			libreDeGluten = false
		} else {
			libreDeGluten = true
		}
	}
	method recibirMordisco(){
		if (gusto == frutilla){
			gusto = chocolate
		} if (gusto == chocolate) {
			gusto = naranja
		} else {
			gusto = frutilla
		}
	}
}

object frutilla{}

object chocolate{}

object naranja{}

object vainilla{}
	
