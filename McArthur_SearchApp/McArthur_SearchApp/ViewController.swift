//
//  ViewController.swift
//  McArthur_SearchApp
//
//  Created by Student on 3/2/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var searchTextField: UITextField!
    
    @IBOutlet weak var resultImage: UIImageView!
    
    @IBOutlet weak var prevButton: UIButton!
    
    @IBOutlet weak var nextButton: UIButton!
    
    @IBOutlet weak var resetButton: UIButton!
    
    @IBOutlet weak var textViewOutlet: UITextView!
    
    var imageData = [
        ["car1", "car2", "car3", "car4", "car5"],
        ["animal1", "animal2", "animal3", "animal4", "animal5"],
        ["brand1", "brand2", "brand3", "brand4", "brand5"]]
    var topicText = [
        ["This car is a Camaro", "This car is a Mustang", "This car is a challenger", "This car is a Mustang", "This car is a Trans-Am"],
        ["This is a German Shepherd dog", "This is a cat", "This is a bunny", "This is a goat", "This is a bear"],
        ["This brand is Nike", "This brand is Carheartt", "This is a fishing brand named PFG", "This is another fishing brand named Shimano", "This brand is Under Armour"]]
    var car_keywords = ["car", "cars", "racecar"]
    var animal_keywords = ["cat", "dog", "animal", "animals"]
    var brand_keywords = ["nike", "brand", "brands", "addidas"]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        prevButton.isEnabled = false
        nextButton.isEnabled = false
    }

    @IBAction func searchButtonAction(_ sender: UIButton) {
        var keyword = searchTextField.text!
        for keyword in car_keywords{
            if(keyword.contains(car_keywords[0])){
                textViewOutlet.text = topicText[0][0]
                
            }
        }
        
    }
    @IBAction func showNextImgButton(_ sender: UIButton) {
        
    }
    @IBAction func showPrevImgButton(_ sender: UIButton) {
        
    }
    @IBAction func resetButton(_ sender: UIButton) {
        
    }
    func updateUI(_ imageNumber: Int){
        resultImage.image = UIImage(named: imageData[imageNumber][0])
        
    }
}

