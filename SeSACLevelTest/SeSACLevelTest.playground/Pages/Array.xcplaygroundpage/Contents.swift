// Swift Review

// 6. 영화 갯수, 러닝 타임, 장르, 평점
let count = Int.random(in: 1...100)
let runtime = count * 120
let genreList = ["로맨스", "SF", "스릴러", "액션", "코미디"]
let genre = genreList.randomElement()
let rate: Double = .random(in: 0...5)

print("""
당신은 총 \(count)개의 영화를 보았고,
총 러닝 타임은 \(runtime)분 입니다.
좋아하는 장르는 \(genre)이며
지금까지 총 영화 평점은 \(rate)입니다.
""")
