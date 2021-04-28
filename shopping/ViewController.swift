//
//  ViewController.swift
//  shopping
//
//  Created by Lai Po Ying on 2021/4/28.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var label1: UILabel!
    @IBOutlet weak var label2: UILabel!
    @IBOutlet weak var label3: UILabel!
    @IBOutlet weak var label4: UILabel!
    @IBOutlet weak var label5: UILabel!
    @IBOutlet weak var label6: UILabel!
    @IBOutlet weak var stepper1Value: UIStepper!
    @IBOutlet weak var stepper2Value: UIStepper!
    @IBOutlet weak var stepper3Value: UIStepper!
    @IBOutlet weak var stepper4Value: UIStepper!
    @IBOutlet weak var stepper5Value: UIStepper!
    @IBOutlet weak var stepper6Value: UIStepper!
    @IBOutlet weak var clearButtonShape: UIButton!
    @IBOutlet weak var moneyLabel: UILabel!
    func sum() {
        let totalMoney = Int(stepper1Value.value)*6490 + Int(stepper2Value.value)*7990 + Int(stepper3Value.value)*6990 + Int(stepper4Value.value)*8490 + Int(stepper5Value.value)*9490 + Int(stepper6Value.value)*6490
        let formatter = NumberFormatter()
        formatter.numberStyle = .currencyISOCode
        formatter.locale = Locale(identifier: "zh_TW")
        formatter.maximumFractionDigits = 0
        moneyLabel.text = formatter.string(from: NSNumber(value: totalMoney))
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        clearButtonShape.layer.borderWidth = 1
        clearButtonShape.layer.borderColor = UIColor.white.cgColor
    }
    @IBAction func stepper1(_ sender: UIStepper) {
        label1.text = "\(Int(sender.value))"
        sum()
    }
    @IBAction func stepper2(_ sender: UIStepper) {
        label2.text = "\(Int(sender.value))"
        sum()
    }
    @IBAction func stepper3(_ sender: UIStepper) {
        label3.text = "\(Int(sender.value))"
        sum()
    }
    @IBAction func stepper4(_ sender: UIStepper) {
        label4.text = "\(Int(sender.value))"
        sum()
    }
    @IBAction func stepper5(_ sender: UIStepper) {
        label5.text = "\(Int(sender.value))"
        sum()
    }
    @IBAction func stepper6(_ sender: UIStepper) {
        label6.text = "\(Int(sender.value))"
        sum()
    }
    @IBAction func clearButton(_ sender: UIButton) {
        stepper1Value.value = 0
        stepper2Value.value = 0
        stepper3Value.value = 0
        stepper4Value.value = 0
        stepper5Value.value = 0
        stepper6Value.value = 0
        label1.text = "0"
        label2.text = "0"
        label3.text = "0"
        label4.text = "0"
        label5.text = "0"
        label6.text = "0"
        moneyLabel.text = "0"
    }
    
}

