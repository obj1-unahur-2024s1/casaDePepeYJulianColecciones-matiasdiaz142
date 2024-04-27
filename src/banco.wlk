//Cuentas Bancarias

object cuentaCorriente{
	var saldo = 0
	method depositar(unImporte){
		saldo = saldo + unImporte
	}
	method extraer(unImporte){
		saldo = 0.max(saldo - unImporte)
	}
	method saldo(unSaldo){saldo=unSaldo}
	method saldo(){
		return saldo
	}
}

object cuentaConGastos{
	var saldo = 0
	method depositar(unImporte){
		saldo = saldo + (unImporte - 200)
	}
	method extraer(unImporte){
		if(unImporte<=10000)
		{
			saldo = 0.max(saldo - (unImporte + 200))
		}
		else
		{
			saldo = 0.max(saldo - unImporte*1.02)
		}
	}
	method saldo(unSaldo){saldo=unSaldo}
	method saldo(){
		return saldo
	}
}

object cuentaCombinada{
	var saldo = 0
	var cuentaPrimaria
	var cuentaSecundaria
	
	method cuentaPrimaria(unaCuenta){cuentaPrimaria=unaCuenta}
	method cuentaSecundaria(unaCuenta){cuentaSecundaria=unaCuenta}
	
	method depositar(unImporte){
		cuentaPrimaria.depositar(unImporte)
	}
	method extraer(unImporte){
		if(cuentaPrimaria.saldo() >= unImporte)
		{
			cuentaPrimaria.extraer(unImporte)
		}
		else
		{
			cuentaSecundaria.extraer(unImporte)
		}
	}
	method saldo(){
		return cuentaPrimaria.saldo() + cuentaSecundaria.saldo()
	}
}