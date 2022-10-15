//
//  FirstViewController.swift
//  31st-iOS-Seminar
//
//  Created by KJ on 2022/10/16.
//

import UIKit

class FirstViewController: UIViewController {
    
    private let questionLable: UILabel = {
        let label = UILabel(frame:CGRect(x: 80, y: 200, width: 250, height: 30))
        label.text = "민초 vs 반민초 당신의 선택은?"
        label.font = .boldSystemFont(ofSize: 20)
        return label
    }()
    
    private lazy var answerTextField: UITextField = { // lazy var 변경
        let textField = UITextField(frame:CGRect(x: 80, y: 280, width: 250, height: 40))
        textField.borderStyle = .roundedRect
        textField.backgroundColor = .systemGray6
        textField.font = .systemFont(ofSize:18, weight: .medium)
        textField.delegate = self // 변경
        return textField
    }()
    
    private let nextButton: UIButton = {
        let button = UIButton(frame: CGRect(x: 80, y: 350, width: 250, height: 42))
        button.setTitle("다음으로", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.backgroundColor = .systemBlue
        button.addTarget(self, action: #selector(touchupNextButton), for: .touchUpInside)
        return button
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        
        let components: [Any] = [questionLable, answerTextField, nextButton] // components 객체 타입은 아무거나
        // 배열로 담아둠
        components.forEach{ // components를 각각 view에 추가해 줌 forEach로 3번 돌며 subview에 추가해줌
            view.addSubview($0 as! UIView) // 타입이 무엇일지 모르기 때문에 UIView로 한정해서 담는다
            // ! -> 강제 매핑, UIView가 아닌 다른 것이 들어가면 안됨
            // $0 -> 달러사인제로, 안에 있는 원소를 하나씩 가리킴
        }
    }
    
    private func presentToSecondVC(){
        let secondVC = SecondViewController()
        secondVC.modalPresentationStyle = .formSheet // default : formSheet -> 뷰가 끝까지 채워지지 않음
        
        // secondVC.result = answerTextField.text
        // secondVC.dataBind()
        
        if let answer = answerTextField.text{
            secondVC.dataBind(result: answer)
        }
        
        self.present(secondVC, animated: true, completion: nil)
    }
    
    private func pushToSecondVC(){
        let secondVC = SecondViewController()
        
        // secondVC.result = answerTextField.text
        // secondVC.dataBind()
        
        if let answer = answerTextField.text{
            secondVC.dataBind(result:answer)
        }
        self.navigationController?.pushViewController(secondVC, animated: true)
    }
    
    @objc
    private func touchupNextButton(){
        // presentToSecondVC()
        pushToSecondVC()
    }
}

extension FirstViewController: UITextFieldDelegate{
    // 입력이 끝나도록 작동
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        view.endEditing(true) // 입력 끝내기
        return true
    }
    
    // 화면 전환
    func textFieldDidEndEditing(_ textField: UITextField) {
        pushToSecondVC()
    }
}
