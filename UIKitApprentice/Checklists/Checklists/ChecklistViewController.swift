//
//  ViewController.swift
//  Checklists
//
//  Created by 김혜림 on 6/24/24.
//

import UIKit

class ChecklistViewController: UITableViewController {
    // 데이터모델 인스턴스 생성
    var row0item = ChecklistItem()
    var row1item = ChecklistItem()
    var row2item = ChecklistItem()
    var row3item = ChecklistItem()
    var row4item = ChecklistItem()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        // 더미 데이터
        row0item.text = "0"
        
        row1item.text = "1"
        row1item.checked = true
        
        row2item.text = "2"
        row2item.checked = true
        
        row3item.text = "3"
        row3item.checked = true
        
        row4item.text = "4"
        row4item.checked = true
    }
    
    // MARK: - Table View Data Source
    // override를 사용해 부모 클래스에서 받아온 tableView라는 함수를 재정의해서 사용
    // UITableViewDataSource(테이블뷰에 데이터를 제공하는 역할)로 부터 함수를 상속 받음
    // 결론: UITableViewController를 상속받아서 UITableViewDataSource가 가지고 있는 numberOfRowsInSection과 cellForRowAt를 override 해서 사용
    
    // numberOfRowsInSection: 셀 개수를 정의하는 메소드
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5 // n개의 셀을 반환
    }
    
    // cellForRowAt:특정 행에 어떤 셀이 들어갈지 정의
    // IndexPath: 테이블 뷰의 현재 위치(섹션과 행)를 나타내기 위해 사용. section과 row 두가지 속성 보유
    // section: 섹션 번호
    // row: 행. 섹션 내에 위치한 행의 번호
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell/*재사용 가능한 셀 생성*/(withIdentifier: "ChecklistItem"/*셀 식별자, 해당 이름을 가진 셀을 행에 불러옴*/, for: indexPath/*현재 행의 위치에 맞는 셀을 가져옴*/)
        
        // 더미 데이터
        // <타입을 바꾸려는 값> as! <바꾸려는 타입>: 강제 캐스팅. 객체의 타입을 강제로 변환. 값과 타입이 일치하지 않으면 에러 발생
        let label = cell.viewWithTag(1000) as! UILabel
        
        // 해당 행에 맞는 텍스트 출력
        if indexPath.row == 0 {
            label.text = row0item.text
        } else if indexPath.row == 1 {
            label.text = row1item.text
        } else if indexPath.row == 2 {
            label.text = row2item.text
        } else if indexPath.row == 3 {
            label.text = row3item.text
        } else if indexPath.row == 4 {
            label.text = row4item.text
        }
        
        configureCheckmark(for: cell, at: indexPath)
        return cell // 셀 반환
    }
    
    // MARK: - Table View Delegate
    // didSelectRowAt: 사용자가 선택한 셀의 위치
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        // 탭하면 엑세서리(체크마크로) 바뀌게
        if let cell = tableView.cellForRow(at: indexPath) {
            // 체크마크를 표시할지 말지
            if indexPath.row == 0 {
                row0item.checked.toggle()
            } else if indexPath.row == 1 {
                row1item.checked.toggle()
            } else if indexPath.row == 2 {
                row2item.checked.toggle()
            } else if indexPath.row == 3 {
                row3item.checked.toggle()
            } else if indexPath.row == 4 {
                row4item.checked.toggle()
            }
            configureCheckmark(for: cell, at: indexPath)
        }
        
        tableView.deselectRow(at: indexPath, animated: true)
    }
    
    func configureCheckmark(for cell: UITableViewCell, at indexPath: IndexPath) {
        var isChecked = false
        
        // 엑세서리 타입을 체크마크로 할지 말지 설정
        if indexPath.row == 0 {
            isChecked = row0item.checked
        } else if indexPath.row == 1 {
            isChecked = row1item.checked
        } else if indexPath.row == 2 {
            isChecked = row2item.checked
        } else if indexPath.row == 3 {
            isChecked = row3item.checked
        } else if indexPath.row == 4 {
            isChecked = row4item.checked
        }
        
        if isChecked {
            cell.accessoryType = .checkmark
        } else {
            cell.accessoryType = .none
        }
    }
}

