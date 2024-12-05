// 조건문

// 성별 출력하기
var gender = true

if gender {
    print("저는 여성입니다.")
}

gender = false

if gender {
    print("저는 여성입니다.")
}

// 수화물 요금 안내
let weight = Int.random(in: 1...20)

if weight > 15 {
    print("수화물 무게가 \(weight)kg 이기 때문에, 수화물 요금을 내셔야 해요.")
}

// 회원가입 부모님 동의
let age = Int.random(in: 1...100)

if age <= 14 {
    print("당신은 \(age)살이기 때문에 부모님의 동의가 필요합니다.")
} else {
    print("당신은 \(age)살이기 때문에 부모님의 동의가 필요 없습니다.")
}

// TV 프로그램 추천
let select = "드라마"

if select == "드라마" {
    print("오늘의 드라마 '태양의 후예'를 추천드립니다.")
}

if select != "영화" {
    print("오늘의 영화 '범죄도시3'를 추천드립니다.")
}

// 성적 장학금 추천
var gradePoint = 4.4

if gradePoint >= 4.3 {
    print("축하합니다, 장학금 대상자로 선정되셨습니다.")
}
