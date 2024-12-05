// 집합

let array = [1, 1 ,1 ,1]
print(array)

let set: Set = [1, 1, 1, 1]
print(set)

var two: Set = [2, 2, 2, 4, 6, 8, 8, 6, 2, 4]
var three: Set = [3, 3, 6, 6, 9, 9, 9, 3, 3, 6]

print(two, three)

var jack: Set = ["A", "B", "C" ,"D", "E"]
var minsu: Set = ["A", "B", "X", "Y", "P"]

let intersection = jack.intersection(minsu)
print(intersection)

let union = jack.union(minsu)
print(union)
