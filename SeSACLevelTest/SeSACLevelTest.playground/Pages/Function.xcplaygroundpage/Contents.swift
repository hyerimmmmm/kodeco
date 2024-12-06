// 함수 & 매개변수

// 1. 4의 배수와 6의 배수를 찾는 기능

var randomNumber = [1, 34, 2, 5, 2, 6, 7, 45, 74, 8, 46, 44, 4, 24, 36, 12]

for num in randomNumber {
    if num % 4 == 0 && num % 6 == 0 {
        print(num)
    }
}

func findNumber() {
    var randomNumber = [1, 34, 2, 5, 2, 6, 7, 45, 74, 8, 46, 44, 4, 24, 36, 12]
    
    for num in randomNumber {
        if num % 4 == 0 && num % 6 == 0 {
            print(num)
        }
    }
}

findNumber()


// 2. 우수 학생을 선정하는 기능
func bestScore() {
    let score = [100, 242, 123, 164, 246, 234, 300, 12, 44, 290]
    var best = 0
    
    for i in score {
        switch i {
        case 0..<200:
            print("\(i)점으로 아쉽지만 우수 학생에 선발되지 못했습니다.")
        case 200...300:
            best += 1
            print("축하합니다! \(i)점으로 우수 학생에 선발되었습니다.")
        default:
            print("다시 확인해보세요.")
        }
    }
    
    print("우수 학생은 총 \(best)명입니다.")
}

bestScore()


// 3. 웰컴 메시지 만들기
func welcomeMessage(name: String) {
    print("안녕하세요! \(name)님, 반갑습니다.")
}

welcomeMessage(name: "고래밥")
welcomeMessage(name: "상어밥")
welcomeMessage(name: "붕어밥")


// 4. 거스름돈 계산기
func changeProgram(pay: Int, price: Int) {
    let change = pay - price
    
    var fiveThousand = change / 5000
    var oneThousand = (change % 5000) / 1000
    var fiveHundred = ((change % 5000) % 1000) / 500
    var oneHoundred = (((change % 5000) % 1000) % 500) / 100

    print("거스름돈 \(change) 원을, 5000원 \(fiveThousand) 장, 1000원 \(oneThousand) 장, 500원 \(fiveHundred) 개, 100원 \(oneHoundred) 개로 거슬러 드리겠습니다.")
}

changeProgram(pay: 50000, price: 23450)
changeProgram(pay: 40000, price: 1800)


// 5. 물 권장 섭취량 계산기
func water(height: Double, weight: Double) {
    let water = (height + weight) / 100

    print("키 \(height), 몸무게 \(weight) 인 경우 물 권장 섭취량은 \(water) 리터 입니다.")
}

water(height: 170.0, weight: 60.0)
water(height: 190.0, weight: 80.0)
