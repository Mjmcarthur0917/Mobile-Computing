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
    
    var imageData = [
        ["car1", "car2", "car3", "car4", "car5"],
        ["animal1", "animal2", "animal3", "animal4", "animal5"],
        ["brand1", "brand2", "brand3", "brand4", "brand5"]]
    var topicText = [""]
    var car_keywords = ["car", "cars", "racecar"]
    var animal_keywords = ["cat", "dog", "animal", "animals"]
    var brand_keywords = ["nike", "brand", "brands", "addidas"]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func searchButtonAction(_ sender: UIButton) {
    }
    
    @IBAction func showNextImgButton(_ sender: UIButton) {
    }
    @IBAction func showPrevImgButton(_ sender: UIButton) {
    }
    @IBAction func resetButton(_ sender: UIButton) {
    }
}

