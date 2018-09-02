object manzana {

	const property imagen = "manzana.png"

	method energia() = 80

	method teEncontro(alguien) {
		alguien.levantar(self)
		game.say(alguien, "Comi una Manzana")
		game.removeVisual(self)
	}

}

object alpiste {

	const property imagen = "alpiste.png"

	method energia() = 5

	method teEncontro(alguien) {
		alguien.levantar(self)
		game.say(alguien, "Comi alpiste")
		game.removeVisual(self)
	}

}

