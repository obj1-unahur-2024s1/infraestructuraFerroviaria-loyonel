import vagones.*
class Formacion
{
	const vagones = []
	const locomotoras = []
	method agregarVagon(unVagon)
	{
		vagones.add(unVagon)
	}
	method quitarVagon(unVagon)
	{
		vagones.remove(unVagon)
	}
	method agregarLocomotora(unaLocomotora)
	{
		locomotoras.add(unaLocomotora)
	}
	method quitarLocomotora(unaLocomotora)
	{
		locomotoras.remove(unaLocomotora)
	}
	method cuantosPasajerosPuedeLlevar()= vagones.sum({vagon => vagon.cantidadDePasajeros()})
	method cantidadDeVagonesPopulares()= vagones.count({vagon => vagon.cantidadDePasajeros() > 50})
	method esFormacionCarguera()= vagones.all({vagon => vagon.carga() > 1000})
	method vagonMasPesado()= vagones.max({vagon => vagon.pesoMaximo()})
	method vagonMasliviano()= vagones.min({vagon => vagon.pesoMaximo()})
	method dispersionDePeso()= self.vagonMasPesado().pesoMaximo() - self.vagonMasliviano().pesoMaximo()
	method cantidadDeBanios()= vagones.count({vagon => vagon.tieneBanio()})
	method hacerMantinimiento()
	{
		vagones.forEach({vagon => vagon.recibirMantenimiento()})
	}
}