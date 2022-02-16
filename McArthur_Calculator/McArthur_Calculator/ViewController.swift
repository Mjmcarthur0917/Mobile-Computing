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

    @IBOutlet weak var displayLabel: UILabel!
    
    @IBAction func buttonAC(_ sender: UIButton) {
        displayLabel.text = displayLabel.text! + " "
    }
    @IBAction func ButtonC(_ sender: UIButton) {
        displayLabel.text = displayLabel.text! + " "
    }
    @IBAction func buttonChangeSign(_ sender: UIButton) {
        
    }
    @IBAction func buttonDivide(_ sender: UIButton) {
        
    }
    @IBAction func button7(_ sender: UIButton) {
        displayLabel.text = displayLabel.text! + "7 "
    }
    @IBAction func button8(_ sender: UIButton) {
        displayLabel.text = displayLabel.text! + "8 "
    }
    @IBAction func button9(_ sender: UIButton) {
        displayLabel.text = displayLabel.text! + "9 "
    }
    @IBAction func butttonMultiply(_ sender: UIButton) {
        
    }
    @IBAction func button4(_ sender: UIButton) {
        displayLabel.text = displayLabel.text! + "4 "
    }
    @IBAction func button5(_ sender: UIButton) {
        displayLabel.text = displayLabel.text! + "5 "
    }
    @IBAction func button6(_ sender: UIButton) {
        displayLabel.text = displayLabel.text! + "6 "
    }
    @IBAction func buttonSubtract(_ sender: UIButton) {
        
    }
    @IBAction func button1(_ sender: UIButton) {
        displayLabel.text = displayLabel.text! + "1 "
    }
    @IBAction func button2(_ sender: UIButton) {
        displayLabel.text = displayLabel.text! + "2 "
    }
    @IBAction func button3(_ sender: UIButton) {
        displayLabel.text = displayLabel.text! + "3 "
    }
    @IBAction func buttonAdd(_ sender: UIButton) {
        
    }
    @IBAction func button0(_ sender: UIButton) {
        displayLabel.text = displayLabel.text! + "0 "
    }
    @IBAction func buttonDecimal(_ sender: UIButton) {
        displayLabel.text = displayLabel.text! + ". "
    }
    @IBAction func buttonPercent(_ sender: Any) {
        
    }
    @IBAction func buttonEquals(_ sender: UIButton) {
        
    }
    
}

