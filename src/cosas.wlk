// Como ya sabemos crear objetos y definir algunos métodos simples, 
// algunos los tenemos parcialmente definidos. Completar todo los demás
// para satisfacer lo que pide el enunciado.

object heladera {
	method precio() { return 200000 }
	method esComida() { return false }
	method esElectrodomestico() { return true }	
}

object cama {
	method precio() { return 80000 }
	method esComida() { return false }
	method esElectrodomestico() { return false }	
}

object tiraDeAsado {
	method precio() { return 3500 }
	method esComida() { return true }
	method esElectrodomestico() { return false }	
}

object paqueteDeFideos {
	method precio() { return 500 }
	method esComida() { return true }
	method esElectrodomestico() { return false }	
}

object plancha {
	method precio() { return 12000 }
	method esComida() { return false }
	method esElectrodomestico() { return true }	
}

object kiloMilanesa {
	method precio() { return 2600 }
	method esComida() { return true }
	method esElectrodomestico() { return false }	
}

object botellaSalsaDeTomate {
	method precio() { return 900 }
	method esComida() { return true }
	method esElectrodomestico() { return false }	
}

object microondas {
	method precio() { return 42000 }
	method esComida() { return false }
	method esElectrodomestico() { return true }	
}

object kiloCebolla {
	method precio() { return 250 }
	method esComida() { return true }
	method esElectrodomestico() { return false }	
}

object compu {
	const precioDolares = 500
	method precio() { return precioDolares *  dolar.precioDeVenta()}
	method esComida() { return false }
	method esElectrodomestico() { return true }	
}

object dolar{
	method precioDeVenta() = 1050
}

object packComida{
	var plato
	var aderezo
	method plato(unPlato){plato=unPlato}
	method aderezo(unAderezo){aderezo=unAderezo}
	method precio() = plato.precio() + aderezo.precio()
	method esComida() { return false }
	method esElectrodomestico() { return true }	
}