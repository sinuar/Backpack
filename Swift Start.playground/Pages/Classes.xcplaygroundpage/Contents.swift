import UIKit
import PlaygroundSupport
import Foundation

// Classes

class Person {
    var name: String
    var age: Int
    var sports: [Sport]
    
    enum Sport{
        case Swimming
        case Running
        case Soccer
        case Dancing
    }
    
    init(name: String, age: Int, sports: [Sport]) {
        self.name = name
        self.age = age
        self.sports = sports
    }
    
}

let Pedro = Person(name: "Pedro Paramo", age: 43, sports: [.Swimming, .Soccer])


