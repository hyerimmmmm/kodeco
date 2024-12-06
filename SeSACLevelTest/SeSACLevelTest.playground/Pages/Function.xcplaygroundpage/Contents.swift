// 함수

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
    var best = 1
    
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

