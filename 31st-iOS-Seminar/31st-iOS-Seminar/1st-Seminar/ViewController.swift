//
//  ViewController.swift
//  31st-iOS-Seminar
//
//  Created by KJ on 2022/10/16.
//

import UIKit

class ViewController: UIViewController {

    private let testLabel: UILabel = {
        let label = UILabel(frame:CGRect(x:100, y:400, width:300, height:100))
        label.text = "안녕"
        return label
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        view.addSubview(testLabel)
    }
}

