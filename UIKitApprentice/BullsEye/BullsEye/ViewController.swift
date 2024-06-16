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
    
    // 알림창
    @IBAction func showAlert() {
        let message = "The value of the slider is: \(currentValue)" + "\nThe target value is: \(targetValue)"
         
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
        targetValue = Int.random(in: 1...100)
        currentValue = 50
        slider.value = Float(currentValue)
        updateLabels() // 새로운 라운드 시작을 위해 targetLabel 없데이트
    }
    
    // targetLabel 업데이트
    func updateLabels() {
        targetLabel.text = String(targetValue) // targetLabel의 text 값을 targetValue 문자열 타입으로 저장
    }


}

