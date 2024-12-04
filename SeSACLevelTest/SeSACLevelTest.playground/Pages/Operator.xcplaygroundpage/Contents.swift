// 연산자

let a = 5
let b = 2

print(a + b)
print(a - b)
print(a * b)
print(a / b)
print(a % b)


// 3. 거스름돈 계산기
// 혼자 해보기
let pay: Int
let price: Int

pay = 45000
price = 27400

let change = pay - price

var fiveThousand = change / 5000
var oneThousand = (change % 5000) / 1000
var fiveHundred = ((change % 5000) % 1000) / 500
var oneHoundred = (((change % 5000) % 1000) % 500) / 100

print("거스름돈 \(change) 원을, 5000원 \(fiveThousand) 장, 1000원 \(oneThousand) 장, 500원 \(fiveHundred) 개, 100원 \(oneHoundred) 개로 거슬러 드리겠습니다.")

// 강의 따라하기
let money = 5000
let product = 4100
let changeMoney = money - product

let rest500 = changeMoney / 500
let rest100 = (changeMoney % 500) / 100

print("거스름돈 \(changeMoney) 원을, 500원 \(rest500) 개, 100원 \(rest100) 개로 거슬러 드리겠습니다.")


// 4. 영화 러닝타임 계산기
// 혼자 해보기
let runningTimeAll: Int

runningTimeAll = 3425

let day = runningTimeAll / (24 * 60)
let hour = (runningTimeAll % (24 * 60)) / 60
let minute = (runningTimeAll % (24 * 60)) % 60

print("총 \(day)일, \(hour)시간, \(minute)분 영화를 관람하셨습니다.")

// 강의 따라하기
let runtime = 2160
let dayTime = runtime / (60 * 24)
let hourTime = runtime % (60 * 24) / 60
let minuteTime = runtime % (60 * 24) % 60

print("총 \(dayTime)일, \(hourTime)시간, \(minuteTime)분 영화를 관람하셨습니다.")


// 5. 물 권장 섭취량 계산기
// 혼자 해보기
let height = 170.0
let weight = 65.0
let water = (height + weight) / 100

print("키 \(height), 몸무게 \(weight) 인 경우 물 권장 섭취량은 \(water) 리터 입니다.")
