import UIKit

// MARK: - 초기화 사용하기
// 클래스 초기화(init)
class MyClass {
    var myProperty: Int
    
    init(myProperty: Int) {
        self.myProperty = myProperty
    }
}

// 초기화된 속성으로 객체(인스턴스) 생성
let myClassObject = MyClass(myProperty: 10)

// 구조체 초기화
struct myStruct {
    var myProperty: Int
    
    init(myProperty: Int) {
        self.myProperty = myProperty
    }
}

// 초기화된 속성으로 객체(인스턴스) 생성
let myStructObject = myStruct(myProperty: 10)

// 초기화 없이 클래스 생성
class MyNoInitClass {
    var noInitProperty: Int = 10
}

// 클래스의 객체(인스턴스) 생성
let myNoInitObject = MyNoInitClass() // 클래스 생성 시 미리 매개변수에 값을 할당했기 때문에 객체 생성시 추가로 할당할 필요 없음

// 지정 초기화와 편의 초기화
class TwoInitClass {
    var myProperty: Int
    
    // 지정 초기화: 객체(인스턴스) 생성시 매개변수에 값을 할당해야 함. 모든 속성을 초기화해야 함.
    init(myProperty: Int) {
        self.myProperty = myProperty
    }
    
    // 편의 초기화: 객체(인스턴스) 생성시 매개변수에 값을 할당할 필요 없음.
    convenience init() {
        self.init(myProperty: 10)
    }
}
