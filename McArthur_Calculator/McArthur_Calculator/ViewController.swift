//
//  ViewController.swift
//  McArthur_Calculator
//
//  Created by Student on 2/16/22.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    var operand1 = ""
    var operand2 = ""
    var calcOperator = ""
    var isOperand2 = false
    
    
    @IBOutlet weak var displayLabel: UILabel!
    
    func operatorPressed(op:String){
        calcOperator = op
        isOperand2 = true
        displayLabel.text = ""
    }
    func buttonPressed(number:String){
        if(isOperand2){
            operand2 += number
            displayLabel.text = operand2
        }
        else{
            operand1 += number
            displayLabel.text = operand1
        }
    }
    
    @IBAction func buttonAC(_ sender: UIButton) {
        displayLabel.text = ""
        operand1 = ""
        operand2 = ""
        calcOperator = ""
        isOperand2=false
    }
    @IBAction func ButtonC(_ sender: UIButton) {
        displayLabel.text = ""
        if (isOperand2){
            operand2 = ""
        }
        else{
            operand1 = ""
        }
    }
    @IBAction func buttonChangeSign(_ sender: UIButton) {
        if(displayLabel.text!.first == "-"){
            displayLabel.text!.removeFirst()
            if(isOperand2 == false){
                operand1.removeFirst()
            }
            else{
                operand2.removeFirst()
            }
        }
        else{
            displayLabel.text = "-"+displayLabel.text!
            if(isOperand2 == false){
                operand1 = displayLabel.text!
            }
            else{
                operand2 = displayLabel.text!
            }
        }
    }
    @IBAction func buttonDivide(_ sender: UIButton) {
        operatorPressed(op: "/")
    }
    @IBAction func button7(_ sender: UIButton) {
        buttonPressed(number: "7")
    }
    @IBAction func button8(_ sender: UIButton) {
        buttonPressed(number: "8")
    }
    @IBAction func button9(_ sender: UIButton) {
        buttonPressed(number: "9")
    }
    @IBAction func butttonMultiply(_ sender: UIButton) {
        operatorPressed(op: "x")
    }
    @IBAction func button4(_ sender: UIButton) {
        buttonPressed(number: "4")
    }
    @IBAction func button5(_ sender: UIButton) {
        buttonPressed(number: "5")
    }
    @IBAction func button6(_ sender: UIButton) {
        buttonPressed(number: "6")
    }
    @IBAction func buttonSubtract(_ sender: UIButton) {
        operatorPressed(op: "-")
    }
    @IBAction func button1(_ sender: UIButton) {
        buttonPressed(number: "1")
    }
    @IBAction func button2(_ sender: UIButton) {
        buttonPressed(number: "2")
    }
    @IBAction func button3(_ sender: UIButton) {
        buttonPressed(number: "3")
    }
    @IBAction func buttonAdd(_ sender: UIButton) {
        operatorPressed(op: "+")
    }
    @IBAction func button0(_ sender: UIButton) {
        buttonPressed(number: "0")
    }
    @IBAction func buttonDecimal(_ sender: UIButton) {
        buttonPressed(number: ".")
    }
    @IBAction func buttonPercent(_ sender: Any) {
        operatorPressed(op: "%")
    }
    @IBAction func buttonEquals(_ sender: UIButton) {
        if(calcOperator == "+"){
            displayLabel.text = String(Double(operand1)!+Double(operand2)!)
        }
        if(calcOperator == "-"){
            displayLabel.text = String(Double(operand1)!-Double(operand2)!)
        }
        if(calcOperator == "/"){
            if(operand2 == "0"){
                displayLabel.text = "Error"
            }
            else{
                displayLabel.text = String(Double(operand1)!/Double(operand2)!)
            }
        }
        if(calcOperator == "x"){
            displayLabel.text = String(Double(operand1)!*Double(operand2)!)
        }
        if(calcOperator == "%"){
            displayLabel.text = String(Double(operand1)!.truncatingRemainder(dividingBy: Double(operand2)!))
        }
        if(displayLabel.text != "Error"){
            displayLabel.text = String(round(Double(displayLabel.text!)! * 100000) / 100000)
            var splitresult = displayLabel.text!.components(separatedBy: ".")
            if(splitresult[1] == "0"){
            displayLabel.text = splitresult[0]
        }
    }
    }
    
}

