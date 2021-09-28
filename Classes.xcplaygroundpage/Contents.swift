import UIKit
import PlaygroundSupport
import Foundation

// MARK: - Classes

class Person {
    
// MARK: Properties
    
    var name: String
    var age: Int
    var sports: [Sport]
    var children: Int?
    var job: Bool?
    
    enum Sport{
        case Swimming
        case Running
        case Soccer
        case Dancing
    }
    
    /// Initialiser of the class person
    /// - Parameters:
    ///   - name: name of the person
    ///   - age: age of the person
    ///   - sports: sports practiced by the person
    ///   - children: number of children
    ///   - job: job situation
    init(name: String, age: Int, sports: [Sport], children: Int? = nil, job: Bool? = nil) {
        self.name = name
        self.age = age
        self.sports = sports
        self.children = children
        self.job = job
    }
    
}

let pedro: Person = Person(
    name: "Pedro Paramo",
    age: 43,
    sports: [.Swimming, .Soccer]
)
let alex: Person = Person(
    name: "Alex Yuen",
    age: 33,
    sports: [.Running, .Dancing, .Swimming],
    children: 2,
    job: true)

// MARK: - Class Singer

class Singer: Person {
    
// MARK: Properties
    
    var voice: String
    
    init(voiceType: String) {
        self.voice = voiceType
        super.init(name: "Jack", age: 54, sports: [.Swimming, .Dancing], children: nil, job: true)
    }
}

// MARK: Mutabilidad

let jack: Singer = Singer(voiceType: "Good")
debugPrint(jack.name)
jack.name = "Luis"
debugPrint(jack.name)





