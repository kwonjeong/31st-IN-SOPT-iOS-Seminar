//
//  PracticeViewController.swift
//  31st-iOS-Seminar
//
//  Created by KJ on 2022/10/20.
//

import UIKit
import SnapKit

class PracticeViewController: UIViewController {

    private let firstView: UIView = {
        let firstView = UIView()
        firstView.backgroundColor = .gray
        return firstView
    }()
    
    private let secondView: UIView = {
        let secondView = UIView()
        secondView.backgroundColor = .gray
        return secondView
    }()
    
    private let thirdView: UIView = {
        let thirdView = UIView()
        thirdView.backgroundColor = .gray
        return thirdView
    }()
    
    private let fourthView: UIView = {
        let fourthView = UIView()
        fourthView.backgroundColor = .gray
        return fourthView
    }()
    
    private let fifthView: UIView = {
        let fifthView = UIView()
        fifthView.backgroundColor = .gray
        return fifthView
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        layout()
        
        // Do any additional setup after loading the view.
    }
    
    private func layout() {
        view.addSubview(firstView)
        view.addSubview(secondView)
        view.addSubview(thirdView)
        view.addSubview(fourthView)
        view.addSubview(fifthView)
        
        firstView.snp.makeConstraints { make in
            make.top.equalTo(self.view.safeAreaLayoutGuide).offset(149)
            make.leading.trailing.equalTo(self.view.safeAreaLayoutGuide).inset(70)
            make.height.equalTo(152)
        }
        
        secondView.snp.makeConstraints { make in
            make.top.equalTo(firstView.snp.bottom).offset(23)
            make.leading.equalTo(self.view.safeAreaLayoutGuide).inset(70)
            make.height.equalTo(152)
            make.width.equalTo(115)
        }
        
        thirdView.snp.makeConstraints { make in
            make.top.equalTo(firstView.snp.bottom).offset(23)
            make.leading.equalTo(secondView.snp.trailing).offset(5)
            make.trailing.equalTo(self.view.safeAreaLayoutGuide).inset(70)
            make.height.equalTo(32)
        }
        
        fourthView.snp.makeConstraints { make in
            make.top.equalTo(thirdView.snp.bottom).offset(5)
            make.leading.equalTo(secondView.snp.trailing).offset(5)
            make.trailing.equalTo(self.view.safeAreaLayoutGuide).inset(70)
            make.height.equalTo(32)
        }
        
        fifthView.snp.makeConstraints { make in
            make.top.equalTo(fourthView.snp.bottom).offset(5)
            make.leading.equalTo(secondView.snp.trailing).offset(5)
            make.trailing.equalTo(self.view.safeAreaLayoutGuide).inset(70)
            make.height.equalTo(76)
        }
    }
}
