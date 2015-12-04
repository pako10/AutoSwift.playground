//: Playground - noun: a place where people can play

import UIKit


enum Velocidades:Int{
    case Apagado = 0
    case VelocidadBaja = 20
    case VelocidadMedia = 50
    case VelocidadAlta = 120
    init(velocidadInicial:Velocidades){
        self = .Apagado
    }
}

class Auto{
    var velocidad = Velocidades.self
    
    init(){
        
    }
    
    func cambioDeVelocidad()->(actual:Int,velocidadEnCadena:String){
        
    }
    
}
