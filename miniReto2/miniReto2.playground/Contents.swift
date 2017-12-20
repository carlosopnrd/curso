//: Playground - noun: a place where people can play

import UIKit

enum Velocidades:Int {
    case Apagado=0, VelocidadBaja=20,VelocidadMedia=50,VelocidadAlta=120
    init (velocidadInicial:Velocidades) {
        self = velocidadInicial
    }
}

class Auto {
    var velocidad:Velocidades
    init () {
        velocidad = Velocidades(velocidadInicial: Velocidades.Apagado)
    }
    func cambioDeVelocidad( ) -> ( actual : Int, velocidadEnCadena: String) {
        var velocidadActual = 0
        var velocidadCadena = ""
        var velocidadAnterior = velocidad
        switch velocidad.hashValue {
        case 0: velocidadActual=velocidad.rawValue; velocidadCadena="Apagado"; velocidad = Velocidades.VelocidadBaja;
        case 1: velocidadActual=velocidad.rawValue; velocidadCadena="Velocidad Baja"; velocidad = Velocidades.VelocidadMedia;
        case 2: velocidadActual=velocidad.rawValue; velocidadCadena="Velocidad Media"; velocidad = Velocidades.VelocidadAlta;
        case 3: velocidadActual=velocidad.rawValue; velocidadCadena="Velocidad Alta"; velocidad = Velocidades.VelocidadMedia;
        default: velocidadActual=velocidad.rawValue; velocidadCadena="Apagado"; velocidad = Velocidades.Apagado;
        }
        return (velocidadActual, velocidadCadena)
    }
}

var carro = Auto()
var resultado:( actual : Int, velocidadEnCadena: String)

for iteracion in 1...20 {
    resultado = carro.cambioDeVelocidad()
    print("\(resultado.actual),\(resultado.velocidadEnCadena)")
}
