//
//  CoursesViewController.swift
//  StudentApp
//
//  Created by Student on 3/24/22.
//

import UIKit

class CoursesViewController: UIViewController {
    
    @IBOutlet weak var coursesOutlet: UILabel!
    
    var coursesArray:[Course] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        for course in coursesArray {
                    coursesOutlet.text = coursesOutlet.text! + course.title + "-" + course.sem + "\n"
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
