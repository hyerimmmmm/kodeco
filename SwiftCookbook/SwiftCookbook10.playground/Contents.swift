import UIKit

// MARK: - Swift 제네릭에서 where 사용하기

// 프로토콜 정의
protocol Container {
    associatedtype Item
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

func popAllAndTestMatch<C1: Container, C2: Container>(_ someContainer: inout C1, _ anotherContainer: inout C2) -> Bool where C1.Item == C2.Item, C1.Item: Equatable { // 2개의 조건 설정: 조건1 - 두 매개변수의 Item은 타입이 동일해야 한다, 조건2 - 매개변수 C1의 Item은 Equatable 프로토콜을 준수해야 한다
    if someContainer.count != anotherContainer.count { // 두 매개변수가 가지고 있는 값의 개수가 동일하지 않을 경우 false 반환
        return false
    }

    for _ in 0..<someContainer.count {
        if someContainer.pop() != anotherContainer.pop() { // 두 매개변수가 가지고 있는 값 중, 삭제될 마지막 값이 같지 않다면 false 반환
            return false
        }
    }

    return true // 위의 조건 중 무엇도 만족되지 않아(두 매개변수의 값이 동일하고, 두 매개변수가 삭제하는 값이 매번 동일한 경우) 반환할 값이 없을 경우 true 반환
}

// 사용 및 출력
// 같은 값을 가지고 있는 배열 두 개 생성
var stackOfStrings1 = Stack<String>()
stackOfStrings1.append("uno")
stackOfStrings1.append("dos")
stackOfStrings1.append("tres")

var stackOfStrings2 = Stack<String>()
stackOfStrings2.append("uno")
stackOfStrings2.append("dos")
stackOfStrings2.append("tres")

// 위의 배열을 매개변수로 함수 실행
// 두 배열이 가지고 있는 값과 값의 개수가 같기 때문에 true에 해당하는 문구 출력
if popAllAndTestMatch(&stackOfStrings1, &stackOfStrings2) { // inout 매개변수 이기 때문에 앞에 & 붙이기
    print("All items match.")
} else {
    print("Not all items match.")
}

// 출력결과: All items match.
