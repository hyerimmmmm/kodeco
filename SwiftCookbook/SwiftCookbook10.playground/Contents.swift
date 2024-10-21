import UIKit

// MARK: - 제네릭을 사용해 타입 확장하기

class Point{
    var x: Double
    var y: Double

    init(x: Double, y: Double) {
        self.x = x
        self.y = y
    }
}

var point = Point(x: 10.0, y: 20.0)
