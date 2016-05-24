//: Velocimetro
import UIKit



enum Velocidades : Int{
    case apagado=0, velocidadBaja=20, velocidadMedia=50, velocidadAlta=120
    
    init(velocidadInicial:Velocidades){
        self=velocidadInicial
    }
}

class Auto{
    var velocidad : Velocidades
    
    init(){
        velocidad = Velocidades(velocidadInicial: Velocidades.apagado)
    }
    
    
    func cambioDeVelocidad() -> (actual : Int, velocidadEnCadena : String){
        
        var velocidadEnCadena : String
        
        if velocidad == .apagado{
            velocidad = .velocidadBaja
            velocidadEnCadena="Velociad baja"
        }else if velocidad == .velocidadBaja{
            velocidad = .velocidadMedia
            velocidadEnCadena="Velociad media"
        }else if velocidad == .velocidadMedia{
            velocidad = .velocidadAlta
            velocidadEnCadena="Velociad alta"
        }else{
            velocidad = .velocidadMedia
            velocidadEnCadena="Velociad media"
        }
        let resultado = (velocidad.rawValue, velocidadEnCadena)
        return resultado
    }
    
}


var auto = Auto()


print("\(auto.velocidad.rawValue), " + "Apagado") //la velocidad 0 no se puede imprimir dentro del for al llamar la funcion cambioDeVelocidad

for index in 1...20{
    var (actual,velocidadEnCadena)=auto.cambioDeVelocidad()
    print("\(actual), " + velocidadEnCadena)
}
