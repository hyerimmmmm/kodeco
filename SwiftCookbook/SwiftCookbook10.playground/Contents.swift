import UIKit

// MARK: - 속성 사용하기
// 저장 속성 생성
class MyPropertyClass {
    var myStoredProperty: Int = 0
}

// 저장 속성 접근 및 사용
let myPropertyObject = MyPropertyClass() // 객체(인스턴스) 생성
myPropertyObject.myStoredProperty = 10 // 속성값 변경
print(myPropertyObject) // output: 10

// 계산 속성 생성
class MyComputedPropertyClass {
    var myStoredProperty: Int = 0
    var myComputedProperty: Int {
        get {
            return myStoredProperty * 2 // 같은 클래스 안에 있는 저장 속성을 활용해 계산하고 값을 반환.
        }
        set {
            myStoredProperty = newValue / 2 // myComputedProperty에 값이 들어오면, newValue라는 임시 변수에 저장해서 계산을 진행하고 저장 속성 myStoredProperty에 값을 저장
        }
    }
}

// 계산 속성 접근 및 사용
let myComputedPropertyObject = MyComputedPropertyClass()

myComputedPropertyObject.myStoredProperty = 10
print(myComputedPropertyObject.myComputedProperty) // output: 20

myComputedPropertyObject.myComputedProperty = 30 // 계산형 속성에 값을 부여한 경우 newValue라는 임시 매개변수에 할당 되어 계산 됨
print(myComputedPropertyObject.myStoredProperty) // output: 15
