import UIKit

// MARK: - 다형성 사용하기
// 수퍼클래스(부모클래스) 생성
class Shape {
    func draw() {
        print("Drawing a shape")
    }
}

// 서브클래스(자식클래스) 생성
class Circle: Shape {
    // override를 사용해 수퍼클래스(부모클래스)에서 정의 된 함수의 실행 코드 변경
    override func draw() {
        print("Drawing a circle")
    }
}

// 서브클래스(자식클래스) 생성
class Square: Shape {
    // override를 사용해 수퍼클래스(부모클래스)에서 정의 된 함수의 실행 코드 변경
    override func draw() {
        print("Drawing a square")
    }
}

// 함수 생성
// Shape 클래스를 매개변수로 받는 함수 생성
func drawShape(shape: Shape) {
    // 함수가 시행되면 매개변수가 가지고 있는 draw함수 시행
    shape.draw()
}
// 서브클래스를 활용한 인스턴스 생성
// 매개변수로 불려온 클래스 뒤에 ()가 붙는 이유는 초기화 값을 불러오기 위해서
drawShape(shape: Circle()) // output: "Drawing a circle" / 매개변수로 받아온 Circle 클래스 안에 있는 draw 함수가 시행되기 때문
drawShape(shape: Square()) // output: "Drawing a square" / 매개변수로 받아온 Square 클래스 안에 있는 draw 함수가 시행되기 때문
