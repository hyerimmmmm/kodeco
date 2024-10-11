import UIKit

// MARK: - 제네릭 서브스크립트 사용

struct Stack<Element> { // Element라는 단일 타입 매개변수를 가진 제네릭 구조체 정의
    var items = [Element]()

    mutating func push(_ item: Element) {
        items.append(item)
    }

    mutating func pop() -> Element? {
        guard !items.isEmpty else {
            return nil
        }
        return items.removeLast()
    }

    // Sequence 프로토콜을 준수하는 임의의 타입을 매개변수로 받는 subscript
    subscript<Indices: Sequence>(indicse: Indices) -> [Element] where Indices.Iterator.Element == Int { // Indices의 각 요소는 반드시 Int여야 한다는 조건 추가
        var result = [Element]()

        for index in indicse {
            guard index < items.count else {
                continue
            }
            result.append(items[index])
        }
        return result
    }
}

var stack = Stack<String>() // 제네릭 구조체 Stack의 매개변수 유형 지정
stack.push("uno")
stack.push("dos")
stack.push("tres")

print(stack[[0, 2]]) // [0, 2] 정수 배열을 서브스크립트에 전달, Stack에서 이 전달된 값에 해당하는 위치의 값을 가지고 새로운 배열을 생성해서 출력
// 출력결과: ["uno", "tres"]

