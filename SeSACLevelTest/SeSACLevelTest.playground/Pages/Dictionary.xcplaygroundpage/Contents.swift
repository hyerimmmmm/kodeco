// 딕셔너리

// 학번 관리
var students: [Int: String] = [101: "홍길동", 102: "김철수"]

print(students)

students[103] = "김민수"
print(students)

students[101] = "김영희"
print(students)

students.updateValue("고래밥", forKey: 101)
print(students)

students.removeValue(forKey: 102)
print(students)

// 해시태그 관리
var hashtag: [String: Int] = ["영화명대사": 1000, "영화스타그램": 2000, "영화글귀": 2500]
