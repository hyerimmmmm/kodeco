//
//  ViewController.swift
//  BullsEye
//
//  Created by 김혜림 on 6/16/24.
//

import UIKit

class ViewController: UIViewController {
    
    var currentValue: Int = 50

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func showAlert() {
        let message = "The value of the slider is: \(currentValue)"
        
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
    }
    
    @IBAction func sliderMoved(_ slider: UISlider) {
        currentValue = lroundf(slider.value) // lroundf: 소수를 정수로 반올림 하여 저장
    }


}

