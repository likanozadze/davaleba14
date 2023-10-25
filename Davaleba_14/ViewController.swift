//
//  ViewController.swift
//  Davaleba_14
//
//  Created by Lika Nozadze on 10/22/23.
//
// iPhone 14 pro

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var answer: UILabel!
    @IBOutlet weak var number: UITextField!
    @IBOutlet weak var number2: UITextField!
    @IBOutlet weak var labelText: UILabel!
    @IBOutlet weak var switchControl: UISwitch!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func switchButton(_ sender: UISwitch) {
        if sender.isOn {
            labelText.text = "უსგ"
        } else {
            labelText.text = "უსჯ"
        }
    }
    
    @IBAction func calculateButton(_ sender: UIButton) {
        if let text1 = number.text, let text2 = number2.text,
           let num1 = Int(text1), let num2 = Int(text2) {
            var resultText = "Result: "
            if switchControl.isOn {
                let gcd = calculateGCD(num1, num2)
                resultText += "\(gcd)"
            } else {
                let lcm = calculateLCM(num1, num2)
                resultText += "\(lcm)"
            }
            answer.text = resultText
        } else {
            answer.text = "Invalid"
        }
    }
    
    func calculateLCM(_ num1: Int, _ num2: Int) -> Int {
        
        let product = num1 * num2
        let gcd = calculateGCD(num1, num2)
        let lcm = product / gcd
        return lcm
    }
    
    func calculateGCD(_ a: Int, _ b: Int) -> Int {
        if b == 0 {
            return a
        } else {
            return calculateGCD(b, a % b)
        }
    }
}


