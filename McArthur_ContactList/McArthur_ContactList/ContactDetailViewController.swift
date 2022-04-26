//
//  ContactDetailViewController.swift
//  McArthur_ContactList
//
//  Created by Student on 4/26/22.
//

import UIKit

class ContactDetailViewController: UIViewController {

    @IBOutlet weak var ContactNameLabel: UILabel!
    
    @IBOutlet weak var ContactNumberLabel: UILabel!
    
    var contactName = ""
    var contactNumber = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        ContactNameLabel.text = contactName
        ContactNumberLabel.text = "\(contactNumber)"
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
