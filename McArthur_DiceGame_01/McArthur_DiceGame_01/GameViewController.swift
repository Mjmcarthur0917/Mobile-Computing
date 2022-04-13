//
//  GameViewController.swift
//  McArthur_DiceGame_01
//
//  Created by Student on 4/7/22.
//

import UIKit

class GameViewController: UIViewController {

    @IBOutlet weak var Player1GameWins: UILabel!
    
    @IBOutlet weak var Player2GameWins: UILabel!
    
    @IBOutlet weak var ImageViewOutlet: UIImageView!
    
    @IBOutlet weak var Player1Score: UILabel!
    
    @IBOutlet weak var Player2Score: UILabel!
    
    var firstPlayer = ""
    var secondPlayer = ""
    
    var score = 0
    
    var wins = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        let player1 = firstPlayer
        let player2 = secondPlayer
        ImageViewOutlet.image = UIImage(named: "play")
        Player1GameWins.text! = "Total number of games \(player1) won: 0"
        Player2GameWins.text! = "Total number of games \(player2) won: 0"
        Player1Score.text! = "\(player1) current score: Nil"
        Player2Score.text! = "\(player2) current score: Nil"
    }
    
    @IBAction func RollDiceButtonClicked(_ sender: UIButton) {
        let firstRoll = Int.random(in: 1...6)
        let playerOne = firstPlayer
        
        let secondRoll = Int.random(in: 1...6)
        let playerTwo = secondPlayer
        
        if(firstRoll > secondRoll){
            score+=1
            wins+=1
            Player1Score.text! = "\(playerOne) current score: \(score)"
            Player1GameWins.text! = "Total number of games \(playerOne) won: \(wins)"
        }
        if(firstRoll < secondRoll){
            score+=1
            Player1Score.text! = "\(playerTwo) current score: \(score)"
            Player2GameWins.text! = "Total number of games \(playerTwo) won: \(wins)"
            
        }
        
        
    }
    
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
