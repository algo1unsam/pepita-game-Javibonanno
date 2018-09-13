import ciudades.*

object pepita {

	var property energia = 100
	var property ciudad = buenosAires
	var property posicion = game.at(3, 3)

	method imagen() {
		if (energia < 10) {
			return "pepitaCansada.png"
		}
		if (energia > 100) {
			return "pepitaGorda1.png"
		} else {
			return "pepita.png"
		}
	}

	method come(comida) {
		energia = energia + comida.energia()
	}

	method volaHacia(unaCiudad) {
		if (ciudad != unaCiudad) {
			self.move(unaCiudad.posicion())
			ciudad = unaCiudad
		} else game.say(self, "ya estoy en ese lugar ")
	}

	method energiaParaVolar(distancia) = 15 + 5 * distancia

	method move(nuevaPosicion) {
		// TODO está harcodeado el 20, acá tiene que ir la energía que le tomaría ir hasta ese lugar
		if (energia >= 20) {
			energia -= self.energiaParaVolar(posicion.distance(nuevaPosicion))
			self.posicion(nuevaPosicion)
		} else {
			game.say(self, "Dame de comer primero!")
		}
	}

	method teEncontro(alguien) {
		alguien.darComida(self)
	}

}

