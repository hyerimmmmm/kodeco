//
//  AddItemViewController.swift
//  Checklists
//
//  Created by 김혜림 on 7/8/24.
//

import UIKit

class AddItemViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationItem.largeTitleDisplayMode = .never
    }
    
    @IBOutlet weak var textField: UITextField!
    
    // MARK: - Actions
    @IBAction func cancel() {
        navigationController?.popViewController(animated: true)
    }
    
    @IBAction func done() {
        print("Contents of the text field: \(textField.text!)")
        navigationController?.popViewController(animated: true)
    }
    
    // MARK: - Table View Delegates
    // 셀을 탭했을 때 색이 변하지 않도록 하기
    override func tableView(_ tableView: UITableView, willSelectRowAt indexPath: IndexPath) -> IndexPath? {
        return nil // 객체가 선택되지 않도록 nil값 반환
    }
    
    // 키보드 자동으로 나오기
    override func viewWillAppear(_ animated: Bool) { // viewWillAppear 메서드: 뷰 컨트롤러가 화면에 나타나기 직전에 호출되는 메서드로, 화면 전환 시 필요한 준비 작업을 할 수 있는 곳
        super.viewWillAppear(animated) // 부모 클래스의 viewWillAppear 메서드를 호출, UIViewController의 기본 동작을 유지하기 위해 필요
        textField.becomeFirstResponder() // textField 라는 아이를 현재의 FirstResponder로 설정하는 것, FirstResponder는 현재 사용자의 입력을 받을 수 있는 객체를 말함 -> 따라서 이 코드는 뷰 컨트롤러가 나타나면 바로 textField에 포커스가 맞춰지도록 하는 것
    }
}
