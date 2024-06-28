import UIKit

// MARK: - 상속 사용하기
// 수퍼클래스(부모클래스) 생성
class Vehicle {
    // 고유 속성 생성
    var wheels: Int
    var weight: Double
    var maxSpeed: Double
    
    // 속성 초기화
    init(wheels: Int, weight: Double, maxSpeed: Double) {
        self.wheels = wheels
        self.weight = weight
        self.maxSpeed = maxSpeed
    }
    
    // 고유 메소드 생성
    func description() -> String {
        return "A vehicle with \(wheels) wheels, weighs \(weight) kgs and has a maximum speed of \(maxSpeed) km/h."
    }
}

// 클래스 Vehicle를 상속받는 서브클래스 생성
class Car: Vehicle {
    // 고유 속성 생성
    var numberOfDoors: Int // 클래스 내부에서 부르는 이름
    
    init(wheels: Int, weight: Double, maxSpeed: Double, doors: Int) { // doors는 numberOfDoors를 클래스 밖에서 부르는 이름
        // 고유 속성 초기화
        self.numberOfDoors = doors
        // 수퍼클래스(부모클래스) 초기화
        super.init(wheels: wheels, weight: weight, maxSpeed: maxSpeed)
    }
}

// 서브클래스 객체(인스턴스) 생성
let myCar = Car(wheels: 4, weight: 1000, maxSpeed: 200, doors: 4) // 수퍼클래스에 있던 속성들도 사용 가능

// 서브클래스에서 수퍼클래스의 속성 및 메소드에 접근하기
print(myCar.wheels) // output: 4
print(myCar.description()) //output: "A vehicle with 4 wheels, weighs 1000 kgs and has a maximum speed of 200 km/h."
