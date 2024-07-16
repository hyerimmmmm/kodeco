import UIKit


// MARK: - 정적 함수와 속성을 결합하여 싱글톤 객체 생성하기

// 싱글톤 예시
class Settings {
    static let shared = Settings() // Settings 클래스의 유일한 인스턴스, 정적 함수 및 속성은 클래스에 직접 연결되어 있기 때문에 이니셜라이저가 비공개이더라도 외부에서 접근 가능
    private init() {} // 이니셜라이저(초기화)를 비공개로 만들어 외부에서 수정 불가능하게 만들기, 외부에서 인스턴스를 생성하려면 초기값을 가져와야 하는데 비공개 상태이기 때문에 불가능해짐
    
    var fontSize: Double = 14.0 // 공유 데이터
}

let settings = Settings.shared // 유일한 인스턴스를 통해 공유 데이터에 접근 가능
settings.fontSize = 16.0

let anotherSettings = Settings.shared
print(anotherSettings.fontSize) // output: 16, 클래스 안의 데이터를 공유하고 있기 때문에 변경 사항도 공유 됨
