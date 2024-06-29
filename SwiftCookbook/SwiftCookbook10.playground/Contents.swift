import UIKit


// MARK: - 확장 사용하기
// 클래스 확장하기
extension Double { // Double 클래스 확장 선언
    // Double 값을 지정된 소수점 자리로 반올림하는 새로운 메소드 추가
    func roundToDecimal(_ fractionDigits: Int) -> Double {
        let multiplier = pow(10, Double(fractionDigits)) // 10을 매개변수 Double(fractionDigits) 만큼 제곱
        return Darwin.round(self * multiplier) / multiplier // round로 소수점 이하 자리수를 반올림해서 정수로 변환하고 multiplier로 나눠서 원하는 만큼의 소수점 생성
    }
}

// 추가한 함수 사용
let myDouble = 3.14159265
print(myDouble.roundToDecimal(2)) // output: 3.14
// multiplier는 10을 제곱해서 100을 가지게 됨
// -> 위의 함수에서 self는 함수를 사용하는 값이기 때문에 myDouble 곱하기 100한 값을 반올림하고 정수만 돌려줘서 314 반환
// -> 314를 100으로 나눠서 소수점 만들기
// 314를 최종적으로 반환

// 구조체 확장하기
extension CGSize {
    // 사이즈의 면적을 계산하는 새로운 속성 추가
    var area: CGFloat {
        return width * height
    }
}

// 추가한 속성 사용
let mySize = CGSize(width: 2.0, height: 3.0)
print(mySize.area) // output: 6
