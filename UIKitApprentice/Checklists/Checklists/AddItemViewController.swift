//
//  AddItemViewController.swift
//  Checklists
//
//  Created by 김혜림 on 7/8/24.
//

import UIKit

class AddItemViewController: UITableViewController, UITextFieldDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationItem.largeTitleDisplayMode = .never
    }
    
    @IBOutlet weak var doneBarButton: UIBarButtonItem!
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
    
    // MARK: - Text Field Delegate
    // 텍스트 필드에 내용이 입력되지 않았을 경우 done 버튼 비활성화
    // textField(_:shouldChangeCharactersIn:replacementString:) 메서드: UITextField 에서 텍스트가 변경될 때마다 호출되어 텍스트의 변경을 제어하고 추가적인 동작을 수행하는 메서드
    func textField(_ textField: UITextField, shouldChangeCharactersIn  range: NSRange, replacementString string: String) -> Bool {
        let oldText = textField.text! // textField의 현재 텍스트를 변수에 저장
        let stringRange = Range(range, in: oldText)! // 매개변수 range를 oldText 문자열에서의 인덱스 범위로 변환, NSRange에서 Range로 형변환
        // Range: 특정 컬렉션(ex: String) 내의 일정 부분을 나타내는 자료 구조
        // 문자열에서의 인덱스 범위: 시작 인덱스와 문자열의 길이(ex: "world" 문자열의 인덱스 범위는 (0, 5)
        let newText = oldText.replacingCharacters(in: stringRange, with: string) // oldText문자열에서 stringRange에 해당하는 범위를 string으로 대체해 새로운 문자열 생성
        // replacingCharacters: 특정 범위의 문자열을 다른 문자열로 대체하는 역할
        
        // 베이직 코드
//        if newText.isEmpty { // newText가 비어있을 경우
//            doneBarButton.isEnabled = false // doneBarButton 비활성화
//            // isEnabled 속성: UIButton, UITextField 등에서 사용하는 컨트롤 활성화 여부
//        } else {
//            doneBarButton.isEnabled = true // doneBarButton 활성화
//        }
        
        // 베이직 코드를 단순화
        doneBarButton.isEnabled = !newText.isEmpty // isEnabled의 값을 newText.isEmpty의 값을 반전한 값으로 설정
        
        return true // true를 반환할 경우 replacementString이 textField에 반영
    }
    
    // 클리어 버튼 사용시에도 done 버튼 활성화/비활성화 가능 하도록
    func textFieldShouldClear(_ textField: UITextField) -> Bool {
        doneBarButton.isEnabled = false
        
        return true
    }
}
