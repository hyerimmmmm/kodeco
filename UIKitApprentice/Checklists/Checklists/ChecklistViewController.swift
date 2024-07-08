//
//  ViewController.swift
//  Checklists
//
//  Created by 김혜림 on 6/24/24.
//

import UIKit

class ChecklistViewController: UITableViewController {
    // 데이터모델 인스턴스 생성 배열 활용해 생성 -> 새로운 데이터 모델
    var items = [ChecklistItem]()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // 네비게이션 타이틀 크게 만들기
        navigationController?.navigationBar.prefersLargeTitles = true

        // 더미데이터
        let item1 = ChecklistItem()
        item1.text = "1"
        items.append(item1)
        
        let item2 = ChecklistItem()
        item2.text = "2"
        items.append(item2)
        
        let item3 = ChecklistItem()
        item3.text = "3"
        items.append(item3)
        
        let item4 = ChecklistItem()
        item4.text = "4"
        items.append(item4)
        
        let item5 = ChecklistItem()
        item5.text = "5"
        items.append(item5)
        
        let item6 = ChecklistItem()
        item6.text = "6"
        items.append(item6)
    }
    
    // MARK: - Table View Data Source
    // override를 사용해 부모 클래스에서 받아온 tableView라는 함수를 재정의해서 사용
    // UITableViewDataSource(테이블뷰에 데이터를 제공하는 역할)로 부터 함수를 상속 받음
    // 결론: UITableViewController를 상속받아서 UITableViewDataSource가 가지고 있는 numberOfRowsInSection과 cellForRowAt를 override 해서 사용
    
    // numberOfRowsInSection: 셀 개수를 정의하는 메소드
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // items 배열안의 요소만큼 셀 추가
        return items.count
    }
    
    // cellForRowAt:특정 행에 어떤 셀이 들어갈지 정의
    // IndexPath: 테이블 뷰의 현재 위치(섹션과 행)를 나타내기 위해 사용. section과 row 두가지 속성 보유
    // section: 섹션 번호
    // row: 행. 섹션 내에 위치한 행의 번호
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell/*재사용 가능한 셀 생성*/(withIdentifier: "ChecklistItem"/*셀 식별자, 해당 이름을 가진 셀을 행에 불러옴*/, for: indexPath/*현재 행의 위치에 맞는 셀을 가져옴*/)
        
        let item = items[indexPath.row]
        
        configuarText(for: cell, with: item)
        configureCheckmark(for: cell, with: item)
        return cell // 셀 반환
    }
    
    // MARK: - Table View Delegate
    // didSelectRowAt: 사용자가 선택한 셀의 위치
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        // 탭하면 엑세서리(체크마크로) 바뀌게
        if let cell = tableView.cellForRow(at: indexPath) {
            // 체크마크를 표시할지 말지
            let item = items[indexPath.row]
            item.checked.toggle()
            
            configureCheckmark(for: cell, with: item)
        }
        tableView.deselectRow(at: indexPath, animated: true)
    }

    func configureCheckmark(for cell: UITableViewCell, with item: ChecklistItem) {

        if item.checked {
            cell.accessoryType = .none
        } else {
            cell.accessoryType = .checkmark
        }
    }
    
    func configuarText(for cell: UITableViewCell, with item: ChecklistItem) {
        let label = cell.viewWithTag(1000) as! UILabel
        label.text = item.text
    }
    
    // MARK: - Actions
    @IBAction func addItem() {
        let newRowIndex = items.count // item이 추가될 때마다 행이 자동으로 추가도리 수 있도록 변수 생성
        
        let item = ChecklistItem() // 새로운 체크리스트 객체 생성
        item.text = "I am a new row" // 더미 텍스트
        items.append(item) // 데이터모델 items 배열에 새로 생성된 item 추가

        
        let indexPath = IndexPath(row: newRowIndex, section: 0) // 갱신된 newRowIndex 값을 저장
        let indexPaths = [indexPath] // 위에 저장한 값을 임시 배열로 생성
        tableView.insertRows/*테이블뷰에 행을 추가하는 메소드*/(at/*추가하려는 행*/: indexPaths, with/*애니메이션*/: .automatic)
    }
}

