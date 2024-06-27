import UIKit

// MARK: - 서브스크립트 사용하기
class MyList {
    // 빈 배열 생성
    var items: [String]
    
    // 초기화
    init(items: [String]) {
        self.items = items
    }
    
    // 객체(인스턴스)에 쉽게 접근하기 위해 서브스크립트 사용
    subscript(index: Int) -> String { // 매개변수 index는 위치값을 가져오는 역할
        get {
            return items[index] // items 배열의 위치값을 입력하면, 그 위치값에 해당하는 문자열 값을 반환
        }
        set {
            items[index] = newValue // items 배열의 위치값을 입력하고, 값을 입력하면 입력된 값으로 대체
        }
    }
}

// 서브스크립트를 사용해 배열의 요소에 접근하기
let myList = MyList(items: ["apple", "banana", "orange"]) // 속성값 입력
print(myList[1]) // output: "banana" / 1번째 위치에 있는 문자열 값 호출
myList[1] = "mango" // 1번째 위치에 있는 값 대체
print(myList.items) // output: "apple", "mango", "orange"
