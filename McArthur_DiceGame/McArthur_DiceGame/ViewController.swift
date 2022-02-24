//
//  ViewController.swift
//  McArthur_DiceGame
//
//  Created by Student on 2/24/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var enterFirstPlayer: UITextField!
    
    @IBOutlet weak var enterSecondPlayer: UITextField!
    
    @IBOutlet weak var firstPlayerResults: UILabel!
    
    @IBOutlet weak var secondPlayerResults: UILabel!
    
    @IBOutlet weak var winnerResults: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func diceButtonClicked(_ sender: Any) {
        let firstRoll = Int.random(in: 1...6)
        let firstPlayer = enterFirstPlayer.text
        firstPlayerResults.text = "\(firstPlayer!)'s Roll is: \(firstRoll)"
        
        let secondRoll = Int.random(in: 1...6)
        let secondPlayer = enterSecondPlayer.text
        secondPlayerResults.text = "\(secondPlayer!)'s Roll is: \(secondRoll)"
        
        if(firstRoll>secondRoll){
            winnerResults.text = "\(firstPlayer!) is the winner!"
        }
        if(secondRoll>firstRoll){
            winnerResults.text = "\(secondPlayer!) is the winner!"
        }
        if(firstRoll == secondRoll){
            winnerResults.text = "The game is a tie!"
        }
    }
    
}

