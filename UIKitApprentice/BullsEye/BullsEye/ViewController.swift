//
//  ViewController.swift
//  BullsEye
//
//  Created by 김혜림 on 6/16/24.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func showAlert() {
        // 경고창 생성
        let alert = UIAlertController(title: "Hello, World",
                                      message: "This is my first app!",
                                      preferredStyle: .alert)
        
        // 경고창 동작 생성
        let action = UIAlertAction(title: "Awesome",
                                   style: .default,
                                   handler: nil)
        
        // 경고창에 동작 추가
        alert.addAction(action)
        // 버튼 누르면 경고창 띄우기
        present(alert, animated: true, completion: nil)
    }


}

