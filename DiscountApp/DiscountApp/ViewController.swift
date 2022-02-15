//
//  ViewController.swift
//  DiscountApp
//
//  Created by Student on 2/15/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var amountEntered: UITextField!
    @IBOutlet weak var discountEntered: UITextField!
    
    @IBOutlet weak var displayLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func submitButtonClicked(_ sender: UIButton) {
        var amountEntered = Double (amountEntered.text!)
        var discountEntered = Double (discountEntered.text!)
        
        var discount = amountEntered! * (1-discountEntered!/100)
        
        displayLabel.text = "Discount price: \(discount)"
        
    }
    
}

