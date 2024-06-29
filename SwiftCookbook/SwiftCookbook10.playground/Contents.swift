import UIKit


// MARK: - 키 경로 사용하기
// 구조체 생성
struct Person {
    var name: String
    var address: Address
}

struct Address {
    var street: String
    var city: String
}

// 인스턴스 생성
let person = Person(name: "John Doe", address: Address(street: "1 Main St", city: "San Francisco"))

// 키 경로 변수에 저장
let streetKeyPath = \Person.address.street
// 키 경로에 대한 값에 접근
let street = person[keyPath: streetKeyPath] // output: "1 Main St" / person이라는 인스턴스가 키 경로 위치에 가지고 있는 값에 접근
