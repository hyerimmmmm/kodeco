// 형변환

let height: Int = 160
let weight: Double = 50.1

let waterGuide = (Double(height) + weight) / 100

print("하루 물 권장 섭취량은 \(waterGuide)L 입니다.")

let test = 100

print(type(of: test))

let testToString = String(test)

print(type(of: testToString))
