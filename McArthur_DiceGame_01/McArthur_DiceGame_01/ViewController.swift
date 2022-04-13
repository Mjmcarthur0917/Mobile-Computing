//
//  ViewController.swift
//  McArthur_DiceGame_01
//
//  Created by Student on 4/7/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var FirstPlayerOutlet: UITextField!
    
    @IBOutlet weak var SecondPlayerOutlet: UITextField!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        var transition = segue.identifier
        if(transition == "playSegue"){
            //make ResultViewController as a destination
            var destination = segue.destination as! GameViewController
            destination.firstPlayer = FirstPlayerOutlet.text!
            destination.secondPlayer = SecondPlayerOutlet.text!
            
        }
    }
}

