import UIKit


// MARK: - 정적 함수와 속성의 이해

// 정적 함수 사용 예시
struct Math {
    static func square(number: Int) -> Int {
        return number * number
    }
}

let result = Math.square(number: 4) // static을 사용하지 않으면 인스턴스를 생성해야지만 클래스나 구조체 안의 함수나 속성 호출 가능
print(result) // output: 16

// 정적 속성 사용 예시
class Counter {
    static var count = 0
    
    init() {
        Counter.count += 1
    }
}

let c1 = Counter()
print(Counter.count) // output: 1
let c2 = Counter()
print(Counter.count) // output: 2
// 모든 인스턴스가 속성을 공유하기 때문에 처음 호출 되었을 때 변경된 값이 그 다음에 호출 되었을 때에 적용되어서 값 변경
