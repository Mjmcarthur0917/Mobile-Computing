//
//  File.swift
//  McArthur_ContactList
//
//  Created by Student on 4/26/22.
//


import UIKit

class ContactListViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return contacts.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var cell = TableViewOutlet.dequeueReusableCell(withIdentifier: "contactReuse", for: indexPath)
        //assign the data to the cell
        cell.textLabel?.text = contacts[indexPath.row]
        //return cell
        return cell
    }
    

    @IBOutlet weak var TableViewOutlet: UITableView!
    
    @IBOutlet weak var CreateContactOutlet: UIButton!
    
    var contacts = [["John","6612346543"],["Micheal","7654321786"],["Kevin","9087543157"],["Eden","8976543219"],["Rodrygo","7896543261"],["Adam","6578943219"],["Gabriel","6543216891"],["Mary","6123456789"]]
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        TableViewOutlet.delegate = self
        TableViewOutlet.dataSource = self
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?){
        let transition = segue.identifier
        if transition == "contactInfoSegue"{
            let destination = segue.destination as! ContactDetailViewController
            destination.contactName = contacts[(TableViewOutlet.indexPathForSelectedRow?.row)!]
        }
    }
}
