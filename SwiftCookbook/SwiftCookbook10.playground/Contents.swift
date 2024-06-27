import UIKit

// MARK: - 메소드 사용하기
// 메소드 생성
class MyClass {
    var myProperty: Int
    
    init(myProperty: Int) {
        self.myProperty = myProperty
    }
    
    // 메소드 생성: 메소드란 클래스나 구조체 내에서 생성되고 사용되는 함수
    func doubleMyProtperty() {
        myProperty *= 2 // myProperty = myProperty * 2와 같은 내용
    }
}

// 메소드 사용
let myObject = MyClass(myProperty: 10) // 속성에 값 할당
myObject.doubleMyProtperty() // 메소드 동작: myProperty의 값을 2배로 만들어 저장
print(myObject.myProperty) // output: 20

// 메소드 생성
struct Point {
    var x: Double
    var y: Double
    
    init(x: Double, y: Double) {
        self.x = x
        self.y = y
    }
    
    // 복잡한 메소드도 생성 가능
    // 두 점과 점 사이의 거리를 구하는 메소드
    func distance(to point: Point) -> Double {
        let deltaX = x/*속성 x*/ - point.x/*매개변수의 속성 x*/
        let deltaY = y - point.y
        return sqrt(deltaX * deltaX + deltaY * deltaY)
    }
}

// 메소드 사용
let point1 = Point(x: 0.0, y: 0.0)
let point2 = Point(x: 3.0, y: 4.0)
let distance = point1.distance(to: point2)
print(distance)  // output: 5.0 / distance 메소드의 반환값에 사용된 sqrt은 제곱근을 반환하는 메소드이기 때문에, 반환값을 실제로 계산하면 25.0 이지만 제곱해서 25를 만들 수 있는 숫자인 5가 출력
