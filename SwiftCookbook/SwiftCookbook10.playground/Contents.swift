import UIKit


// MARK: - Swift 제네릭에 제약을 적용하는 방법

// 프로토콜을 사용해 제약 적용하기
// 프로토콜 생성
// 프로토콜 내용: 이 프로토콜을 따르는 모든 타입은 fly라는 함수를 가지고 있어야 함
protocol Flyable {
    func fly()
}

// Flyable 프로토콜을 준수하는 클래스 생성
class Bird: Flyable {
    func fly() {
        print("I can fly")
    }
}

// 제네릭 타입 매개변수에 Flyable을 준수한다는 제약 설정
struct Flight<T: Flyable> {
    let flyingObject: T
}

// 인스턴스를 생성할 경우, Flyable 프로토콜을 준수하는 타입들만 매개변수로 가져와 사용 가능
let flight = Flight(flyingObject: Bird())
flight.flyingObject.fly()
