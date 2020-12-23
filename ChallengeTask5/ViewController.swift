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
        let alert1 = UIAlertController(title: "課題5", message: "割られる数を入力してください", preferredStyle: .alert)
        alert1.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
        self.present(alert1, animated: true, completion: nil)
    }
    
    func alertButton2() {
        let alert2 = UIAlertController(title: "課題5", message: "割る数を入力してください", preferredStyle: .alert)
        alert2.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
        self.present(alert2, animated: true, completion: nil)
    }
    
    func alertButton3() {
        let alert3 = UIAlertController(title: "課題5", message: "割る数に0を入力しないでください", preferredStyle: .alert)
        alert3.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
        self.present(alert3, animated: true, completion: nil)
    }
    
    
    @IBAction func divisionButton(_ sender: UIButton) {
        // 入力する
        // 暗黙的アンラップDouble型(nilを許容する)
        let num1: Double! = Double(textField1.text ?? "")
        let num2: Double! = Double(textField2.text ?? "")
        
        // nilチェック
        if num1 == nil {
            alertButton()
        } else if num2 == nil {
            alertButton2()
        } else if (num1 / num2).isInfinite {
            alertButton3()
        } else {
            label.text = String(floor(num1 / num2 * 10000)/10000)
        }
    }
}

