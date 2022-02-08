//
//  ViewController.swift
//  Even_Odd
//
//  Created by Student on 2/8/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var enteredText: UITextField!
    
    @IBOutlet weak var displayLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func submitButton(_ sender: UIButton) {
        let input = Int(enteredText.text!)
        if (input!%2 == 0){
            displayLabel.text = "\(input!) is an even number."
        }
        else{
            displayLabel.text = "\(input!) is an odd number."
        }
            
    }
    
}

