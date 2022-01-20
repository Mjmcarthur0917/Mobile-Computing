//
//  ViewController.swift
//  HelloApp
//
//  Created by McArthur,Matthew J on 1/20/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textOutlet: UITextField!
    
    @IBOutlet weak var textBirthdate: UITextField!
    @IBOutlet weak var DisplayLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
    }

    @IBAction func SubmitButton(_ sender: UIButton) {
        //read the name from the text field
        var enteredName = textOutlet.text!
        var birthdate = textBirthdate.text!
        //Change the display label to Hello, name
        DisplayLabel.text = "Hello, \(enteredName)\n\(birthdate)"
    }
    
}

