//
//  ViewController.swift
//  CourseDisplayApp
//
//  Created by Student on 2/10/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imageViewOutet: UIImageView!
    
    
    @IBOutlet weak var crsNumber: UILabel!
    
    @IBOutlet weak var crsTitle: UILabel!
    
    @IBOutlet weak var crsSemester: UILabel!
    
    @IBOutlet weak var previousButton: UIButton!
    
    @IBOutlet weak var nextButton: UIButton!
    
    let courses = [["img01", "44555", "Network Security", "Fall 2022"],
                   ["img02", "44644", "IOS", "Spring 2022"],
                   ["img03", "44656", "Streaming Data", "Summer 2022"]]
    
    var imageNumber = 0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //load the details (image, num, title, and sem) of the first course (0th element)
        
        updateUI(imageNumber)
        
        //Previous button is disabled
        previousButton.isEnabled = false
    }

    @IBAction func previousButtonClicked(_ sender: Any) {
        //Next button should be enabled
        nextButton.isEnabled = true
        //UI should be updated with the previous course details
        imageNumber -= 1
        updateUI(imageNumber)
        //if the course position is at the 0th position, previous button should be disabled
        if(imageNumber == 0){
            previousButton.isEnabled = false
        }
        
    }
    
    @IBAction func nextButtonClicked(_ sender: Any) {
        //UI should be updated with the next course details
        imageNumber += 1
        updateUI(imageNumber)
        //previous button should be enabled
        previousButton.isEnabled = true
        //once reaching the end of the courses array next button should be disabled
        if(imageNumber == courses.count-1){
            nextButton.isEnabled = false
        }
    }
    
    func updateUI(_ imageNumber: Int){
        imageViewOutet.image = UIImage(named: courses[imageNumber][0])
        crsNumber.text = courses[imageNumber][1]
        crsTitle.text = courses[imageNumber][2]
        crsSemester.text = courses[imageNumber][3]
    }
    
}

