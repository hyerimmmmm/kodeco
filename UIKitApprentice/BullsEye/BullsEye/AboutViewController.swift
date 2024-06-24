//
//  AboutViewController.swift
//  BullsEye
//
//  Created by 김혜림 on 6/24/24.
//

import UIKit
import WebKit

class AboutViewController: UIViewController {
    // 웹뷰 추가
    @IBOutlet var webView: WKWebView!
    
    // 페이지 닫기
    @IBAction func close() {
        dismiss(animated: true, completion: nil)
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        if let url = Bundle.main.url(forResource: "BullsEye", withExtension: "html") { // 변수 url에 번들 파일 메인에 있는 파일 이름 BullsEye, 확장자 html 인 파일을 담으면(해당 파일이 있으면) 아래 구문 실행
            let request = URLRequest(url: url) // 위 변수에 담긴 파일을 객체로 생성(URLRequest: 불러온 url로 객체를 생성하는 메소드?)
            webView.load(request) // 웹뷰에서 지정된 요청(request) 로드
        }
    }
}
