// 옵셔널

var number = [1, 2, 3, 4, 5]

print(number.randomElement())
print(number.randomElement()!)

if number == nil {
    print("오류가 발생했습니다.")
} else {
    print(number.randomElement()!)
}

number.removeAll()

print(number.randomElement())


var age = "13"

print(Int(age))
print(Int(age)!)

age = "13안녕"

print(Int(age))



var name: String? = "고래밥"
print(name!)

if name == nil {
    print("손님")
} else {
    print(name!)
}

print(name ?? "손님")

name = nil

if name == nil {
    print("손님")
} else {
    print(name!)
}
