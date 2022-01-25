//
//  ViewController.swift
//  VowelTester
//
//  Created by McArthur,Matthew J on 1/25/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textOutlet: UITextField!
    
    @IBOutlet weak var label: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func submitButton(_ sender: UIButton) {
        //Read the text
        var enteredText = textOutlet.text!
        //check for a vowel
        if enteredText.contains("a") || enteredText.contains("e") || enteredText.contains("i") || enteredText.contains("o") || enteredText.contains("u"){
            //Display on the label
            label.text = "The entered text contains a vowel."
        }
        else{
            label.text = "The entered text does not contain a vowl."
        }
    }
    
}

