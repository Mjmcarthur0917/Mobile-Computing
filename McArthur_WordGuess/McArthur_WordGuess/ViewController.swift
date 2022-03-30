//
//  ViewController.swift
//  McArthur_WordGuess
//
//  Created by Student on 3/30/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var wordsGuessedLabel: UILabel!
    
    @IBOutlet weak var wordsMissedLabel: UILabel!
    
    @IBOutlet weak var wordsRemainingLabel: UILabel!
    
    @IBOutlet weak var totalWordsLabel: UILabel!
    
    @IBOutlet weak var userGuessLabel: UILabel!
    
    @IBOutlet weak var guessedLetterField: UITextField!
    
    @IBOutlet weak var hintLabel: UILabel!
    
    @IBOutlet weak var guessCountLabel: UILabel!
    
    var words = [["DOG", "Animal"], ["CHIEFS", "KC Sports Team"], ["CAR", "Vehicle"], ["MACBOOK", "Apple Device"], ["SWIFT", "Programming Language"]]
    
    var word = ""
    var count = 0
    
    var lettersGuessed = ""
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        word = words[count][0]
        
        updateUnderscores();
        
    }

    @IBAction func guessLetterButtonPressed(_ sender: UIButton) {
    }
    
    @IBAction func playAgainButtonPressed(_ sender: UIButton) {
    }
    
    func updateUnderscores(){
        for letter in word{
            userGuessLabel.text! += "_ "
        }
    }
    
}

