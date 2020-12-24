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
    
    private func presentAlert(message: String) {
        let alert = UIAlertController(title: "課題5", message: message, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
        present(alert, animated: true, completion: nil)
    }
    
    @IBAction func divisionButton(_ sender: UIButton) {
        // 入力する
        // 暗黙的アンラップDouble型(nilを許容する)
        let num1: Double! = Double(textField1.text ?? "")
        let num2: Double! = Double(textField2.text ?? "")
        
        guard num1 != nil else {
            presentAlert(message: "割られる数を入力してください")
            return
        }
        
        guard num2 != nil else {
            presentAlert(message: "割る数を入力してください")
            return
        }
        
        guard !(num1 / num2).isInfinite else {
            presentAlert(message: "割る数に0を入力しないでください")
            return
        }
        
        label.text = String(floor(num1 / num2 * 10000)/10000)
    }
}
