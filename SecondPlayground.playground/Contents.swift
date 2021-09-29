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

enum SocialPlatform: String {
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

