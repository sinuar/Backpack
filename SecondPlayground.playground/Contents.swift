//: A UIKit based Playground for presenting user interface

import UIKit
import PlaygroundSupport

/*
 struct Point {
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
/*
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
 */

/*
 struct Petition: Codable {
 var nombre: String
 }
 
 /// Método para decodificar la información de un archivo .json
 /// - Parameters:
 ///- fileName: El nombre del archivo que queremos decodificar en el bundle
 ///- type: La extensión del archivo
 /// - Returns: La respuesta de la decodificación
 func readData(fileName: String, type: String) -> Data {
 
 // MARK:  Accessing data
 
 // Get the file path for the file "contacts.json" in the playground bundle
 guard let filePath: URL = Bundle.main.url(forResource: fileName, withExtension: type) else { return Data()
 }
 
 // Get the contentData
 guard let contentData = try? Data(contentsOf: filePath) else { return Data() }
 return contentData
 }
 
 func parse(json: Data) {
 let decoder = JSONDecoder()
 
 if let jsonPetitions = try? decoder.decode(Petition.self, from: json) {
 let petitions = jsonPetitions.nombre
 print("Hola", petitions)
 }
 }
 parse(json: readData(fileName: "firstFile", type: "json"))
 readData(fileName: "firstFile", type: "json")
 */


// MARK: - Joint Activity

// Crearemos 2 estructuras una llamada Run y la otra llamada Cycle, que representarán los datos que estamos utilizando.

// MARK: - Yoga Structure

struct Yoga {
    let id: String
    let time: Int
    let date: Date
}

// MARK: - Swimming Structure

struct Swimming {
    enum PoolSize: Int {
        case TwentyFive = 25
        case Fifty = 50
    }
    // MARK: Properties
    
    let id: String
    let distance: Int
    let date: Date
}
    // MARK: - Run structure
    
    struct Run {
        let id: String
        let startTime, endTime: Date
        let distance: Float
        let onRunningTrack: Bool
    }
    
    // MARK: - Cycle structure
    
    struct Cycle {
        enum CycleType {
            case regular
            case mountainBike
            case racetrack
        }
        // MARK: Properties
        let id: String
        let startTime, endTime: Date
        let distance: Float
        let incline: Int
        let type: CycleType
    }
    
    // MARK: Pushups structure
    struct Pushups {
        // MARK: Properties
        let repetitions: [Int]
        let date: Date
    }
    
    // MARK: Workout enumartion
    enum Workout {
        case run(Run)
        case cycle(Cycle)
        case pushups(Pushups)
        case yoga(Yoga)
        case swimming(Swimming)
    }
    
    // MARK: Values
    let treadmill: Run = Run(id: "1",
                             startTime: Date(),
                             endTime: Date(timeIntervalSinceNow: 3600),
                             distance: 5,
                             onRunningTrack: false)
    
    let mountainBike: Cycle = Cycle(id: "2",
                                    startTime: Date(),
                                    endTime: Date(timeIntervalSinceNow: 3600),
                                    distance: 30,
                                    incline: 10,
                                    type: .mountainBike)
    
    let chestOnFire: Pushups = Pushups(repetitions: [30, 20, 10],
                                       date: Date())

    let yogaExcercise: Yoga = Yoga(id: "Yoga", time: 30, date: Date())

    let inTheWater: Swimming = Swimming(id: "Swimming", distance: 800, date: Date())
    
    let workout: Workout = Workout.swimming(inTheWater)
    
    switch workout {
    case .run(let run):
        print("Run: \(run)")
    case .cycle(let cycle):
        print("Cycle: \(cycle)")
    case .pushups(let pushups):
        print("Pushups: \(pushups)")
    case .swimming(let swimming):
        print("Swimming: \(swimming)")
    case .yoga(let yoga):
        print("Yoga: \(yoga)")
    }
