object roque {

	var property posicion = game.at(1, 9)
	var comidaActual = null

	method imagen() = "jugador.png"

	method levantar(comida) {
		if (comidaActual != null) {
			game.addVisualIn(comidaActual, posicion.up(1))
		}
		comidaActual = comida
		game.removeVisual(comida)
	}

	method darComida(golondrina) {
		if (comidaActual != null) {
			golondrina.come(comidaActual)
			game.addVisualIn(comidaActual, game.at(1.randomUpTo(9),1.randomUpTo(9)))
			comidaActual = null
		}
	}

}

