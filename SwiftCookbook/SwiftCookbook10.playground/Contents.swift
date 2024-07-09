import UIKit


// MARK: - 정적 함수와 인스턴스 함수의 차이점

// 정적 함수와 인스턴스 함수 차이점 예시
class Car {
    // 정적 함수와 속성 선언
    static var manufacturer = "Unknown"
    static func describeManufacturer() -> String {
        return "The manufacturer is \(manufacturer)."
    }
    
    // 인스턴스 함수와 속성 선언
    var color = "Unknown"
    func describeColor() -> String {
        return "The color is \(color)."
    }
}

// 정적 속성 및 함수 활용(타입에서 바로 접근 가능)
Car.manufacturer = "Toyota"
print(Car.describeManufacturer()) // output: "The manufacturer is Toyota."

// 인스턴스 속성 및 함수 활용(인스턴스를 생성해야 접근 가능)
let redCar = Car()
redCar.color = "Red" // 정적 속성 처럼 클래스에서 바로 접근하려고 할 경우 에러 발생
let greenCar = Car()
greenCar.color = "Green"
print(redCar.describeColor()) // output: "The color is Red."
print(greenCar.describeColor()) // output: "The color is Green."
