import UIKit

// MARK: - 재귀 열거형
// 재귀 열거형 선언
indirect enum AritmeticExpression { // 3개의 case를 포함하는 열거형 선언
    case number(Int) // case number: Int 유형의 값을 가질 수 있는 case
    case addition(AritmeticExpression, AritmeticExpression) // case addition: AritmeticExpression 열거형의 값을 가질 수 있는 case
    case multiplication(AritmeticExpression, AritmeticExpression) // case addition: AritmeticExpression 열거형의 값을 가질 수 있는 case
    // addition과 multipication이 AritmeticExpression를 데이터 타입으로 사용할 수 있는 이유는 indirect를 사용해 재귀 열거형으로 선언했기 때문
}

// 재귀 열거형 활용
let two = AritmeticExpression.number(2)
let three = AritmeticExpression.number(3)
let sum = AritmeticExpression.addition(two, three)


// MARK: - 열거형 메소드 사용 방법
// 열거형에서 메소드 선언하기
enum Shape {
    case square(side: Double) // case square: Double 유형의 side라는 값을 가진 case
    case rectangle(width: Double, height: Double) // case rectangle: Double 유형의 width, height라는 값을 가진 case
    case circle(radius: Double) // case circle: Double 유형의 radius라는 값을 가진 case
    
    // 위에 선언된 케이스들에 대한 메소드 선언
    func description() -> String { // String 유형을 반환하는 메소드 선언
        switch self { // description 메소드에 대한 조건문 선언
        case .square(let side): // 조건: .square라는 case가 side라는 값을 가지고 있으면 아래 구문 실행
            return "A square with side of length \(side)"
        case .rectangle(let width, let height): // 조건: .rectangle라는 case가 width, heigh라는 값을 가지고 있으면 아래 구문 실행
            return "A rectangle with width \(width) and height \(height)"
        case .circle(let radius): // 조건: .circle라는 case가 radius라는 값을 가지고 있으면 아래 구문 실행
            return "A circle with radius \(radius)"
        }
    }
}

// 열거형 값 변수에 담기
let square = Shape.square(side: 2.0)
let rectangle = Shape.rectangle(width: 2.0, height: 2.0)
let circle = Shape.circle(radius: 2.0)

// 열거형 함수 실행
print(square.description()) // "A square with side of length 2.0" 출력
print(rectangle.description()) // "A rectangle with width 2.0 and height 2.0" 출력
print(circle.description()) // "A circle with radius 2.0" 출력


// MARK: - switch 문에서 열거형 사용하기
// 열거형 생성
enum TrafficLight {
    case red, yellow, green
}

// 변수에 열거형 안에 있는 케이스 yellow 저장
let trafficLight = TrafficLight.yellow

// switch 조건문 생성: 아래의 케이스 중 해당 변수와 조건이 일치하는(true) 케이스의 구문을 실행
switch trafficLight {
case .red:
    print("Stop")
case .yellow:
    print("Caution")
case .green:
    print("Go")
}
// output: "Caution


// where을 사용해 조건 추가하기
// 열거형 생성
enum Shapes {
    case square(side: Double)
    case rectangle(width: Double, height: Double)
    case circle(radius: Double)
}

// 변수에 열거형 안에 있는 케이스 square 저장 및 해당 케이스가 가지고 있는 변수에 값 지정
let shape = Shape.square(side: 2.0)

// switch 조건문 생성: 아래의 케이스 중 해당 변수와 조건이 일치하며(ture), where을 통해 추가된 조건까지 일치하는 케이스의 구문을 실행
switch shape {
case .square(let side) where side > 2: // 변수 side를 가지고 있는 .square의 변수 값이 2보다 큰 경우
    print("Large Square")
case .square(let side) where side >= 2: // 변수 side를 가지고 있는 .square의 변수 값이 2보다 크거나 같은 경우
    print("Small Square")
case .rectangle(let width, let height):
    print("Rectangle with width \(width) and height \(height)")
case .circle(let radius):
    print("Circle with radius \(radius)")
default:
    print("Unexpected Shape")
}
// output: "Small Square"


