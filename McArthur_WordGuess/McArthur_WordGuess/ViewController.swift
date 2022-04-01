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
    @IBOutlet weak var PlayAgainButton: UIButton!
    @IBOutlet weak var guessLetterButton: UIButton!
    
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
        //Get the text from the text field.
        var letter = guessedLetterField.text!
        
        //Replace the guessed letter if the letter is part of the word.
        lettersGuessed = lettersGuessed + letter
         var revealedWord = ""
        for l in word{
            if lettersGuessed.contains(l){
                revealedWord += "\(l)"
            }
            else{
                revealedWord += "_ "
            }
        }
        //Assigning the word to displaylabel after a guess
        userGuessLabel.text = revealedWord
        guessedLetterField.text = ""
        
        //If the word is guessed correctly, we are enabling play again button and disabling the check button.
        if userGuessLabel.text!.contains("_") == false{
            PlayAgainButton.isHidden = false;
            guessLetterButton.isEnabled = false;
        }
        guessLetterButton.isEnabled = false
    }
    
    @IBAction func playAgainButtonPressed(_ sender: UIButton) {
        //Reset the button to disable initially.
        PlayAgainButton.isHidden = true
        //clear the label
        lettersGuessed = ""
        count += 1
        //if count reaches the end of the array (all the words are guessed sucessfully), then print Congratualtions in the status label.
        if count == words.count{
            
            guessCountLabel.text = "Congruations! You are done with the game!"
            //clearing the labels.
            guessedLetterField.text = ""
            hintLabel.text = ""
        }
        else{
            //fetch the next word from the array
            word = words[count][0]
            //fetch the hint related to the word
            hintLabel.text = "Hint: "
            hintLabel.text! += words[count][1]
            //Enabling the check button.
            guessLetterButton.isEnabled = true
            
            guessedLetterField.text = ""
            updateUnderscores()
        }
    }
    }
    
    func updateUnderscores(){
        for letter in word{
            userGuessLabel.text! += "_ "
        }
    }
    



