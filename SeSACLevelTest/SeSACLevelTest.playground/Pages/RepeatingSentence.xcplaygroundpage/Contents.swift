// 반복문

// 기본 예제
for number in 1...5 {
    print(number)
}

// 음악 차트
let musicList = ["청춘만화", "신호등", "내 이름 맑음", "품행제로", "오르트구름", "태양물고기", "사건의 지평선"]
let musicCount = musicList.count - 1


for music in 0...musicCount {
    print("\(music + 1)위: \(musicList[music])")
}

for music in 0...musicList.count - 1 {
    print("\(music + 1)위: \(musicList[music])")
}
