//
//  ViewController.swift
//  CoordinatesDemo
//
//  Created by Student on 3/1/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imageViewOutlet: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let minx = imageViewOutlet.frame.minX
        let miny = imageViewOutlet.frame.minY
        print(minx, ",", miny)
        
        let maxx = imageViewOutlet.frame.maxX
        let maxy = imageViewOutlet.frame.maxY
        print(maxx, ",", maxy)
        
        let midx = imageViewOutlet.frame.midX
        let midy = imageViewOutlet.frame.midY
        print(midx, ",", midy)
        
        //move the location of the image to the upper left corner
        //(0,0)
        imageViewOutlet.frame.origin.x = 0
        imageViewOutlet.frame.origin.y = 0
        
        //move the location of the image to the upper right corner (0,314) 414-100
        imageViewOutlet.frame.origin.x = 314
        imageViewOutlet.frame.origin.y = 0
        
        //move the location to the lower left 896 - 100
        imageViewOutlet.frame.origin.x = 0
        imageViewOutlet.frame.origin.y = 796
        
        //move to the bottom right
        imageViewOutlet.frame.origin.x = 314
        imageViewOutlet.frame.origin.y = 796
        
        //move to the center of the screen ((414/2)-50), ((896/2)-50) = (157,398)
        imageViewOutlet.frame.origin.x = 157
        imageViewOutlet.frame.origin.y = 398
        
        
        
    }


}

