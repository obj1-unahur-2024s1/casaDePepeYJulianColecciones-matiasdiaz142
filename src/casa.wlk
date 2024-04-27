import cosas.* //obviamente, vamos a usar los objetos del archivo cosas ;-)
import banco.*

object casaDePepeYJulian {
	const cosas = new List()
	var cuentaBancaria
	
	method cuentaBancaria(unaCuenta){cuentaBancaria=unaCuenta}
	method comprar(unaCosa){
		cosas.add(unaCosa)
		self.gastar(unaCosa.precio())
	}
	method cantidadDeCosasCompradas(){
		return cosas.size()
	}
	method tieneComida(){
		return cosas.any({unaCosa => unaCosa.esComida()})
	}
	method vieneDeEquiparse(){
		return cosas.last().esElectrodomestico()
	}
	method esDerrochona(){
		return cosas.sum({unaCosa => unaCosa.precio()}) > 90000
	}
	method compraMasCara(){
		return cosas.max({unaCosa => unaCosa.precio()})
	}
	method electrodomesticosComprados(){
		return cosas.filter({unaCosa => unaCosa.esElectrodomestico()})
	}
	method malaEpoca(){
		return cosas.all({unaCosa => unaCosa.esComida()})
	}
	method queFaltaComprar(unaLista){
		return unaLista.filter({unaCosa => not cosas.contains(unaCosa)})
	}
	method faltaComida(){
		return cosas.filter({unaCosa => unaCosa.esComida()}).size() < 2
	}
	
	method gastar(unImporte){
		cuentaBancaria.extraer(unImporte)
	}
	method dineroDisponible(){
		return cuentaBancaria.saldo()
	}
}
