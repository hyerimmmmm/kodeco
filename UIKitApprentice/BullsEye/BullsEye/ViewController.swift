//
//  ViewController.swift
//  BullsEye
//
//  Created by 김혜림 on 6/16/24.
//

import UIKit

class ViewController: UIViewController {
    
    var currentValue: Int = 50
    var targetValue = 0
    var score = 0
    var round = 0

    override func viewDidLoad() {
        super.viewDidLoad()
        
        currentValue = lroundf(slider.value) // slider의 값을 반올림하여 정수로 저장
        // targetValue = Int.random(in: 1...100) // 정수 1에서 100까지 랜덤으로 선택해 저장
        startNewRound()
    }
    
    // 매개변수 slider 호출
    @IBOutlet var slider: UISlider!
    // 타겟 레이블 스토리보드와 연결
    @IBOutlet var targetLabel: UILabel!
    // 스코어 레이블 스토리보드와 연결
    @IBOutlet var scoreLabel: UILabel!
    // 라운드 레이블 스토리보드와 연결
    @IBOutlet var roundLabel: UILabel!
    
    // 알림창
    @IBAction func showAlert() {
        // 타겟값과 제출값의 차이 구하기
//        var difference: Int
        
//        if currentValue > targetValue {
//            difference = currentValue - targetValue
//        } else if targetValue > currentValue {
//            difference = targetValue - currentValue
//        } else {
//            difference = 0
//        }
        
        // 위 코드 단순하게 바꾸기
//        var difference = currentValue - targetValue
//        if difference < 0 {
//            difference = currentValue - targetValue * -1 // 음수에 -1 곱해서 양수로 바꾸기, 이걸 더 단순하게 바꾸면 difference = -difference, 또는 difference *= -1
//        }
        
        // abs 함수(음수를 양수로 바꾸는 함수) 사용해 위의 코드 더 단순하게 바꾸기
        let difference = abs(currentValue - targetValue) // 다른 곳에서 값을 바꾸는 과정을 거칠 필요가 없기 때문에 위의 두 방법과 다르게 var가 아니라 let을 사용
        
        // 점수 계산
        let points = 100 - difference
        
        // 점수 업데이트
        score += points // score = score + points와 같은 내용
        
        let message = "You scored \(points) points"
         
        // 경고창 생성
        let alert = UIAlertController(title: "Hello, World",
                                      message: message,
                                      preferredStyle: .alert)
        
        // 경고창 동작 생성
        let action = UIAlertAction(title: "OK",
                                   style: .default,
                                   handler: nil)
        
        // 경고창에 동작 추가
        alert.addAction(action)
        // 버튼 누르면 경고창 띄우기
        present(alert, animated: true, completion: nil)
        // 새로운 라운드 시작
        startNewRound()
    }
    
    @IBAction func sliderMoved(_ slider: UISlider) {
        currentValue = lroundf(slider.value) // lroundf: 소수를 정수로 반올림 하여 저장
    }
    
    // 새로운 라운드 시작
    func startNewRound() {
        round += 1 // 라운드 증가
        targetValue = Int.random(in: 1...100)
        currentValue = 50
        slider.value = Float(currentValue)
        updateLabels() // 새로운 라운드 시작을 위해 targetLabel 없데이트
    }
    
    // targetLabel 업데이트
    func updateLabels() {
        targetLabel.text = String(targetValue) // targetLabel의 text 값을 targetValue 문자열 타입으로 저장
        scoreLabel.text = String(score) // scoreLabel의 text 값을 score 문자열 타입으로 저장
        roundLabel.text = String(round)
    }


}

