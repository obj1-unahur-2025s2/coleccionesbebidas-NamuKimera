object tito {
    var cantidad = 0
    var bebida = cianuro
    method peso() = 70
    method inerciaBase() = 490
    method consumir(unaCantidad,unaBebida) {
        bebida = unaBebida
        cantidad = unaCantidad
    }
    method bebida() = bebida
    method velocidad() {
        return bebida.rendimiento(cantidad)
        * self.inerciaBase() / self.peso()
    }
}

object licuado {
    const frutas = #{}
    var nutrientes = 10

    method cuantasFrutasHay() = frutas.size()
    method nutrientes() = nutrientes
    method agregarFruta(unaFruta) {
        frutas.add(unaFruta)
        nutrientes += 3
    }
    method eliminarFruta(unaFruta) {
        frutas.remove(unaFruta)
        nutrientes -= 3
    }
    method agregarLeche(leche) {
        frutas.add(leche)
        nutrientes += 7
    }
    method agregarHielo(hielo) {
        frutas.add(hielo)
        nutrientes += 5
    }
    method agregarIngrediente(unIngrediente) {
        frutas.add(unIngrediente)
        nutrientes += 1
    }
    method nutrientesTotales() = nutrientes + frutas.sum({unaFruta => unaFruta.nutrientes()})
    method rendimiento(cantidad) = 1 + 1/4 * cantidad + nutrientes
}

object aguaSaborizada {
    method rendimiento(cantidad) = 1 + 1/4 * cantidad
}

object wisky {
    method rendimiento(cantidad) = 0.9 ** cantidad
}
object cianuro {
    method rendimiento(cantidad) = 0
}

object terere {
    method rendimiento(cantidad) {
        return 1.max(cantidad * 0.1)
        //tambien (cantidad * 0.1).max(1)
    }
}