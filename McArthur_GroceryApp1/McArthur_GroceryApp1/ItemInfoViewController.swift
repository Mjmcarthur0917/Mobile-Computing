//
//  ItemInfoViewController.swift
//  McArthur_GroceryApp1
//
//  Created by Student on 4/12/22.
//

import UIKit

class ItemInfoViewController: UIViewController {

    @IBOutlet weak var itemImageViewOutlet: UIImageView!
    
    var groceryItem:GroceryItem = GroceryItem()
    
    @IBOutlet weak var itemInfoOutlet: UITextView!
    override func viewDidLoad() {
        super.viewDidLoad()

        itemImageViewOutlet.image = UIImage(named: groceryItem.itemImage)
        // Do any additional setup after loading the view.
    }
    
    @IBAction func showItemInfoAction(_ sender: UIButton) {
        itemInfoOutlet.isHidden = false
        itemInfoOutlet.text = groceryItem.itemInfo
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
