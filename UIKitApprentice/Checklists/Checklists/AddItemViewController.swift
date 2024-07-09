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
        navigationController?.popViewController(animated: true)
    }
    
    // MARK: - Table View Delegates
    // 셀을 탭했을 때 색이 변하지 않도록 하기
    override func tableView(_ tableView: UITableView, willSelectRowAt indexPath: IndexPath) -> IndexPath? {
        return nil // 객체가 선택되지 않도록 nil값 반환
    }
}
