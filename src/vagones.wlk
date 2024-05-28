class VagonDePasajeros
{
	const ancho
	const largo
	const property tieneBanio
	var estaOrdenado
	
	method cantidadDePasajeros()
	{
		if(ancho <= 3)
		{
			if(estaOrdenado)
			{
				return 8 * largo
			}
			else
			{
				return 8 * largo - 15
			}
		}
		else
		{
			if(estaOrdenado)
			{
				return 10 * largo
			}
			else
			{
				return 10 * largo - 15
			}
		}
	}
	method carga()
	{
		if(tieneBanio)
		{
			return 300
		}
		else
		{
			return 800
		}
	}
	method pesoMaximo()= 2000 + 80 * self.cantidadDePasajeros() + self.carga()
	method recibirMantenimiento()
	{
		estaOrdenado = 2
	}
}
class VagonDeCarga
{
	const cargaMaximaIdeal
	var maderasSueltas
	
	method carga()= cargaMaximaIdeal - 400 * maderasSueltas
	method pesoMaximo()= 1500 + self.carga()
	method cantidadDePasajeros()= 0
	method tieneBanio()= false
	method recibirMantenimiento()
	{
		maderasSueltas = 0.max(maderasSueltas - 2)
	}
}
class VagonDormitorio
{
	const cantidadDeComnpartimientos
	var cantidadDeCamasPorCompartimientos
	
	method carga()= 1200
	method pesoMaximo()= 4000 + 80 * self.cantidadDePasajeros()
	method cantidadDePasajeros()= cantidadDeComnpartimientos * cantidadDeCamasPorCompartimientos
	method tieneBanio()= true
	method recibirMantenimiento(){}
}