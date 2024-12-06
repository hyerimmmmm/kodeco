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
