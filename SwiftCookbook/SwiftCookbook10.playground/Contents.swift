import UIKit


// MARK: - 스위프트에서의 제네릭 타입

// 제네릭 정의 예시
struct Stack<Element> { // 단일 타입 매개변수를 가지는 Stack 이라는 구조체 생성
    var items = [Element]()

    mutating func push(_ item: Element) {
        items.append(item)
    }

    mutating func pop() -> Element? {
        return items.popLast()
    }
}

var stackOfStrings = Stack<String>() // 구조체 인스턴스 생성 시 매개변수의 데이터 타입 지정
stackOfStrings.push("Hello") // 지정된 매개변수 타입과 같은 타입의 데이터 입력
stackOfStrings.push("World")
if let item = stackOfStrings.pop() {
    print(item)
}

var stackOfInts = Stack<Int>()
stackOfInts.push(1)
stackOfInts.push(2)
if let int = stackOfInts.pop() {
    print(int)
}
