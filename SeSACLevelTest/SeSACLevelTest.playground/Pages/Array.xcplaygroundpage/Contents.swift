// Swift Review

// 7. 최근 검색어
var searchList: [String] = []

print(searchList)

searchList.insert("원피스", at: 0)
searchList.insert("신발", at: 0)
searchList.insert("양말", at: 1)

searchList.append("바지")

searchList.append(contentsOf: ["시계", "목걸이", "반지"])

print(searchList)

print(searchList[2])

searchList[6] = "팔찌"

print(searchList)

searchList.remove(at: 4)

print(searchList)

searchList.removeAll()

print(searchList)
