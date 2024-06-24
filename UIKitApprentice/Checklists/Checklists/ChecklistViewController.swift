//
//  ViewController.swift
//  Checklists
//
//  Created by 김혜림 on 6/24/24.
//

import UIKit

class ChecklistViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    // MARK: - Table View Data Source
    // override를 사용해 부모 클래스에서 받아온 tableView라는 함수를 재정의해서 사용
    // UITableViewDataSource(테이블뷰에 데이터를 제공하는 역할)로 부터 함수를 상속 받음
    // 결론: UITableViewController를 상속받아서 UITableViewDataSource가 가지고 있는 numberOfRowsInSection과 cellForRowAt를 override 해서 사용
    
    // numberOfRowsInSection: 셀 개수를 정의하는 메소드
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 100 // n개의 셀을 반환
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
        if indexPath.row % 5 == 0 {
            label.text = "0"
        } else if indexPath.row % 5 == 1 {
            label.text = "1"
        } else if indexPath.row % 5 == 2 {
            label.text = "2"
        } else if indexPath.row % 5 == 3 {
            label.text = "3"
        } else if indexPath.row % 5 == 4 {
            label.text = "4"
        }
        
        return cell // 셀 반환
    }
    
    // MARK: - Table View Delegate
    // didSelectRowAt: 사용자가 선택한 셀의 위치
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        // 탭하면 엑세서리(체크마크로) 바뀌게
        if let cell = tableView.cellForRow(at: indexPath) {
            if cell.accessoryType == .none {
                cell.accessoryType = .checkmark
                print("test")
            } else {
                cell.accessoryType = .none
            }
        }
        
        tableView.deselectRow(at: indexPath, animated: true)
    }


}

