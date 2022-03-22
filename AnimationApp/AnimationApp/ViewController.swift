//
//  ViewController.swift
//  AnimationApp
//
//  Created by Student on 3/15/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var ImageOutlet: UIImageView!
    
    @IBOutlet weak var HappyOutlet: UIButton!
    
    @IBOutlet weak var SadOutlet: UIButton!
    
    @IBOutlet weak var AngryOutlet: UIButton!
    
    @IBOutlet weak var ShakemeOutlet: UIButton!
    
    @IBOutlet weak var ShowOutlet: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        //Move all the components outside of the view
        ImageOutlet.frame.origin.x = view.frame.maxX
        
    }
    override func viewDidAppear(_ animated: Bool) {
        //Move all the components outside of the view
        ImageOutlet.frame.origin.x = view.frame.maxX
        HappyOutlet.frame.origin.x = view.frame.maxX
        SadOutlet.frame.origin.x = view.frame.maxX
        AngryOutlet.frame.origin.x = view.frame.maxX
        ShakemeOutlet.frame.origin.x = view.frame.maxX
        
    }

    @IBAction func HappyButton(_ sender: UIButton) {
        animateImage("Happy")
    }
    
    @IBAction func SadButton(_ sender: UIButton) {
        animateImage("Sad")
    }
    
    @IBAction func AngryButton(_ sender: UIButton) {
        animateImage("Angry")
    }
    
    @IBAction func ShakemeButton(_ sender: UIButton) {
        //Rectangle r = new Rectangle(x, y, w, h)
        
        var w = ImageOutlet.frame.width
        w += 40
        var h = ImageOutlet.frame.height
        h += 40
        var x = ImageOutlet.frame.origin.x - 20
        
        var y = ImageOutlet.frame.origin.y - 20
        
        var largerFrame = CGRect(x: x, y: y, width: w, height: h)
        
        UIView.animate(withDuration: 1, delay: 0, usingSpringWithDamping: 0.4, initialSpringVelocity: 0,  animations: {
            self.ImageOutlet.frame = largerFrame
        })
        
    }
    
    @IBAction func ShowButton(_ sender: UIButton) {
        //writing animation
        UIView.animate(withDuration: 1, animations: {
            self.ImageOutlet.center.x = self.view.center.x
            self.HappyOutlet.center.x = self.view.center.x
            self.SadOutlet.center.x = self.view.center.x
            self.AngryOutlet.center.x = self.view.center.x
            self.ShakemeOutlet.center.x = self.view.center.x
            self.ShowOutlet.isEnabled = false
        })
        
        
        
    }
    
    func animateImage(_ imageName: String){
        
        //image opaque
        UIView.animate(withDuration: 1, animations:{
            self.ImageOutlet.alpha = 0
        })
        
        UIView.animate(withDuration: 1, delay: 0.2, animations:{
            self.ImageOutlet.alpha = 1 //image transparent
            self.ImageOutlet.image = UIImage(named: imageName)
        } )
        
    }
    
}

