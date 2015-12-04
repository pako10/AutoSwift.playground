//: Playground - noun: a place where people can play

import UIKit


enum Velocidades:Int{
    case Apagado = 0
    case VelocidadBaja = 20
    case VelocidadMedia = 50
    case VelocidadAlta = 120
    
    init(velocidadInicial:Velocidades){
        self = velocidadInicial
    }
}

class Auto{
    var velocidad : Velocidades
    
    init(){
        self.velocidad = Velocidades.Apagado
    }
    
    func cambioDeVelocidad()->(actual:Int,velocidadEnCadena:String){
        let actual = self.velocidad
        var speed : String = ""
        
        switch self.velocidad{
        case.Apagado:
            self.velocidad = .VelocidadBaja
            speed = "Velocidad Baja"

        case .VelocidadBaja:
            self.velocidad = .VelocidadMedia
            speed = "Velocidad Media"
        case .VelocidadMedia:
            self.velocidad = .VelocidadAlta
            speed = "Velocidad Alta"
        case .VelocidadAlta:
            self.velocidad = .VelocidadBaja
            speed = "Velocidad Baja"

        }
        return (actual.rawValue, speed)
    }
    
}

let carro = Auto()

for i in 1...20{
    let cambio = carro.cambioDeVelocidad()
    print("\(i) \(cambio.actual), \(cambio.velocidadEnCadena)")
}

