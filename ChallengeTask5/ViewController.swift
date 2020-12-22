//
//  ViewController.swift
//  ChallengeTask5
//
//  Created by 酒井健太郎 on 2020/12/22.
//

import UIKit

final class ViewController: UIViewController {

    @IBOutlet private weak var textField1: UITextField!
    @IBOutlet private weak var textField2: UITextField!
    @IBOutlet weak var label: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        label.text = "0"
    }

    @IBAction func divisionButton(_ sender: UIButton) {
        // 入力
        let num1 = Int(textField1.text ?? "") ?? 0
        let num2 = Int(textField2.text ?? "") ?? 0
        
        // 出力
        label.text = String(num1 / num2)
    }
}

