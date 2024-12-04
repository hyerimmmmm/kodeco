// 변수, 상수와 타입

// 1. 회원가입: 닉네임, 이메일, 나이, 평점, 성별
var nickName: String = "뫄뫄"
var email: String = "ax1021@naver.com"
var age: Int = 33
var rate: Double = 4.0
var gender: Bool = false // true: 남자, false: 여자

print("안녕하세요! 저는 \(nickName) 입니다. 평점은 \(rate) 점이에요. 나이는 \(age)살이에요.")
// output: 안녕하세요! 저는 뫄뫄 입니다. 평점은 4.0 점이에요. 나이는 33살이에요.

nickName = "뭐뭐"
age = 34
rate = 4.4

print("안녕하세요! 저는 \(nickName) 입니다. 평점은 \(rate) 점이에요. 나이는 \(age)살이에요.")
// output: 안녕하세요! 저는 뭐뭐 입니다. 평점은 4.4 점이에요. 나이는 34살이에요.
