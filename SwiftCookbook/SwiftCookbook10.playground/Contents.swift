import UIKit

// MARK: - Swift 제네릭과 함께 연관된 타입 사용하기

// 프로토콜 정의
protocol Container {
    associatedtype Item // 연관된 타입 Item 정의
    // 위에서 정의한 연관된 타입 Item을 사용해 임시로 타입을 정의해 변수/함수 정의
    var items: [Item] { get set }
    mutating func append(_ item: Item)
    mutating func pop() -> Item
    var count: Int { get }
}

// 프로토콜을 따르는 구조체 정의
struct Stack<T>: Container { // 제네릭으로 타입 매개변수 T 생성
    // 프로토콜에서 임시로 정의한 Item의 자리를 생성한 타입 매개변수 T로 대체해서 사용
    var items = [T]()
    mutating func append(_ item: T) {
        items.append(item) // items 배열에 값 추가
    }
    mutating func pop() -> T {
        return items.removeLast() // items 배열의 마지막 값 삭제
    }
    var count: Int {
        return items.count // items 배열에 들어있는 값의 개수
    }
}

func printAndPop<U: Container>(container: inout U) {
    for _ in 0...container.count where container.count > 0 { // 0 부터 container 매개변수의 개수 까지의 숫자를 넣어서 루프 돌리기
        print(container.pop()) // pop 함수를 통해 삭제될 값 출력
    }
}

//사용 및 출력
var intStack = Stack<Int>() // 타입 매개변수를 Int로 설정(Item -> T -> Int)
intStack.append(1)
intStack.append(2)
intStack.append(3)
printAndPop(container: &intStack)
// 출력
// 3
// 2
// 1

var stringStack = Stack<String>() // 타입 매개변수를 String로 설정(Item -> T -> String)
stringStack.append("Alice")
stringStack.append("Bob")
stringStack.append("Candice")
printAndPop(container: &stringStack)
// 출력
// Candice
// Bob
// Alice
