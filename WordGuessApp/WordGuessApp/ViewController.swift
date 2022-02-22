//
//  ViewController.swift
//  WordGuessApp
//
//  Created by Student on 2/22/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var displayLabel: UILabel!
    
    @IBOutlet weak var hintLabel: UILabel!
    
    @IBOutlet weak var checkButton: UIButton!
    
    @IBOutlet weak var letterEntered: UITextField!
    
    @IBOutlet weak var statusLabel: UILabel!
    
    @IBOutlet weak var playAgainButton: UIButton!
    
    var words = [["SWIFT", "Programming Language"],
                 ["DOG", "Animal"],
                 ["CYCLE", "Two wheeler"],
                 ["MACBOOK", "Apple device"]]
    var count = 0
    var word = ""
    var lettersGuessed = ""
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        checkButton.isEnabled = false
        word = words[count][0]
        
        displayLabel.text = ""
        
        updateUnderscores()
        
        hintLabel.text = "Hint: "+words[count][1]
        statusLabel.text = ""
    }

    @IBAction func checkButtonClicked(_ sender: UIButton) {
        var letter = letterEntered.text!
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
        
        displayLabel.text = revealedWord
        letterEntered.text = ""
        
        if displayLabel.text!.contains("_") == false{
            playAgainButton.isHidden = false
            checkButton.isEnabled = false
        }
        checkButton.isEnabled = false
        
    }
    
    @IBAction func playAgainButtonClicked(_ sender: UIButton) {
        //reset the button to disable initially
        playAgainButton.isHidden = true
        //clear label
        lettersGuessed = ""
        count += 1
        
        if count == words.count{
            statusLabel.text = "Congratulations! You are done with the game."
            displayLabel.text = ""
            hintLabel.text = ""
        }
        else{
            //fetch the next word from the array
            word = words[count][0]
            //fetch the hint related to the word
            hintLabel.text = "Hint: "
            hintLabel.text! += words[count][1]
            //Enabling the check button.
            checkButton.isEnabled = true
            
            displayLabel.text = ""
            updateUnderscores()
        }
    }
    
    @IBAction func enterLabelChanged(_ sender: UITextField) {
        //Read the data from the text field
        var textEnterd = letterEntered.text!;
        //Consider only the last character by calling textEntered.last and trimming the white spaces.
        textEnterd = String(textEnterd.last ?? " ").trimmingCharacters(in: .whitespaces)
        letterEntered.text = textEnterd
        
        //Check whether the entered text is empty or not to enable check button.
        if textEnterd.isEmpty{
            checkButton.isEnabled = false
        }
        else{
            checkButton.isEnabled = true
        }
    }
    
    func updateUnderscores(){
        for letter in word{
            displayLabel.text! += "- "
        }
    }
}

