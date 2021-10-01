//: A UIKit based Playground for presenting user interface
  
import UIKit
import PlaygroundSupport

/*struct Point {
    var x: Int? = .zero
    var y: Int? = .zero
    
    init(x: Int? = nil, y: Int? = nil) {
        self.x = x
        self.y = y
    }
}
var pointUno: Point = Point(x: 4, y: 6)

var pointDos: Point = Point(x: 5, y: 3)


print(pointUno)
print(pointDos)


class PointClass {
    var x: Int = 2
    var y: Int = 4
    
}

var pointOne: PointClass = PointClass()
var pointTwo: PointClass = PointClass()

pointOne = pointTwo
pointOne.y = 1

print(pointOne.y)
print(pointTwo.y)
*/

/*enum SocialPlatform: String {
    case facebook
    case twitter = "Log in"
    case instagram = "Bienvenido"
}

func platMessage(on platform: SocialPlatform) {
    switch platform {
    case .instagram:
        print("\(platform.rawValue) a \(platform)")
    case .twitter:
        print("\(platform.rawValue) por favor")
    default:
        break
    }
}

platMessage(on: .twitter)
*/

// MARK: - OTRA CLASS

class MainClassReloj {
    
    //ENUMERACIÓN
    
    enum CajaSize{
        case small
        case medium
        case big
    }
    
    //PROPIEDADES
    var marca: String
    var precio: Int
    var digital: Bool
    var CajaSize: MainClassReloj.CajaSize
    
    //INICIALIZACIÓN
    
    init (marca: String, precio: Int, digital: Bool, CajaSize: MainClassReloj.CajaSize){
        self.marca = marca
        self.precio = precio
        self.digital = digital
        self.CajaSize = CajaSize
    }
    
    //HAY 2 TIPOS DE MÉTODOS: MÉTODOS DE INSTANCIA Y MÉTODOS DE CLASE
    //ESTE ES UN MÉTODO DE INSTANCIA
    
    func muestraValores(){
        
    //IMPLEMENTACIÓN DEL MÉTODO. FUNCIÓN QUE AQUÍ ES MÉTODO
        
        print("Este reloj es de la marca \(marca)")
    }
    
    //  MÉTODO DE CLASE

    class func muestraAutor () -> String{
    //    IMPLEMENTACIÓN DE LA FUNCIÓN O MÉTODO
        
        return("El autor es Sinuhé")
    }
}

// VARIABLE DE INSTANCIA A LA CLASE MAINCLASSRELOJ

var miReloj: MainClassReloj = MainClassReloj(marca: "Apple", precio: 2000, digital: true, CajaSize: .medium)

print("Mi reloj es \(miReloj.marca) que cuesta \(miReloj.precio) Digital: \(miReloj.digital) ")

var suReloj: MainClassReloj = MainClassReloj(marca: "Timex", precio: 1500, digital: false, CajaSize: .small)

print("Su reloj es \(suReloj.marca) que cuesta \(suReloj.precio) Digital: \(suReloj.digital) ")

//CREAMOS AHORA UNA SUBCLASE DE LA CLASE PADRE MAINCLASSRELOJ

class RelojDePulsera: MainClassReloj{
    var tipoCorrea: String
    var color: String
    
    init (marca: String, precio: Int, digital: Bool, tipoCorrea: String, color: String){
        self.tipoCorrea = tipoCorrea
        self.color = color
        
        super.init(marca: marca, precio: precio, digital: digital, CajaSize: .medium)
    }
}
var MiRelojDePulsera: RelojDePulsera = RelojDePulsera(marca: "Oropel", precio: 850, digital: false, tipoCorrea: "piel", color: "negro")

miReloj.muestraValores()

MainClassReloj.muestraAutor()

