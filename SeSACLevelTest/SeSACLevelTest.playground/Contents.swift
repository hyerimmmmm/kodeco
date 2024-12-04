// 변수, 상수와 타입

// 1. 회원가입: 닉네임, 이메일, 나이, 평점, 성별
var nickName = "뫄뫄" // 타입 추론 가능
let email = "ax1021@naver.com" // 타입 추론 가능
var age = 33 // 타입 추론 가능
var rate: Double = 4 // 타입 추론 불가능, 뒤에 소수점이 없기 때문에 Int와 혼동 할 수 있기 때문에 타입 어노테이션을 사용해 타입을 명시해줘야 함 / 타입 추론을 사용하고 싶다면 4가 아니라 4.0 이라고 값을 넣어줘야 함
var gender: Bool = false // true: 남자, false: 여자 / 타입 추론 가능

print("안녕하세요! 저는 \(nickName) 입니다. 평점은 \(rate) 점이에요. 나이는 \(age)살이에요.")
// output: 안녕하세요! 저는 뫄뫄 입니다. 평점은 4.0 점이에요. 나이는 33살이에요.

nickName = "뭐뭐"
email = "ax7489@gmail.com" // 오류 발생
age = 34
rate = 4.4

print("안녕하세요! 저는 \(nickName) 입니다. 평점은 \(rate) 점이에요. 나이는 \(age)살이에요.")
// output: 안녕하세요! 저는 뭐뭐 입니다. 평점은 4.4 점이에요. 나이는 34살이에요.
