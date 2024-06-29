import UIKit


// MARK: - 구조체 VS 클래스
// 클래스 사용: 복잡해질 가능성이 있는 내용
// 사람에 관한 데이터를 저장하는데 사용하는 경우, 다양한 곳에 데이터가 중복 상속될 가능성이 높기 때문에 상속이 가능한 클래스 사용이 유리
class Person {
    var name: String
    var agg: Int
    
    init(name: String, agg: Int) {
        self.name = name
        self.agg = agg
    }
}

// 구조체 사용: 단순하게 정리되는 내용
// 성적 정보를 저장하는 단순한 정보이기 때문에 구조체 사용이 유리
struct Grade {
    var letter: String
    var points: Double
    
    init(letter: String, points: Double) {
        self.letter = letter
        self.points = points
    }
}
