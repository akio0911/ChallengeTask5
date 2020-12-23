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
    @IBOutlet private weak var label: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        label.text = "0"
    }
    
    func alertButton() {
        let alert1 = UIAlertController(title: "課題5", message: "割る数には0を入力しないでください", preferredStyle: .alert)
        alert1.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
        self.present(alert1, animated: true, completion: nil)
    }
    
    func alertButton2() {
        let alert2 = UIAlertController(title: "課題5", message: "入力してください", preferredStyle: .alert)
        alert2.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
        self.present(alert2, animated: true, completion: nil)
    }
    
    
    @IBAction func divisionButton(_ sender: UIButton) {
        // 入力する
        // 暗黙的アンラップDouble型(nilを許容する)
        let num1: Double! = Double(textField1.text ?? "")
        let num2: Double! = Double(textField2.text ?? "")
        
        // nilチェック
        if num1 == nil || num2 == nil {
            alertButton2()
        // 0除算チェック
        } else if (num1 / num2).isInfinite {
            alertButton()
        } else {
            label.text = String(format: "%.5f", num1 / num2)
        }
    }
}

