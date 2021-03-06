//
//  ViewController.swift
//  ContactListApp
//
//  Created by Student on 4/19/22.
//

import UIKit
import FirebaseDatabase



class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
        func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            return contactNames.count
        }
        
        func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            //create a cell
            let cell = TableViewOutlet.dequeueReusableCell(withIdentifier: "contactCell", for: indexPath)
            
            //populate the data
            cell.textLabel?.text = contactNames[indexPath.row]
            
            //return cell
            return cell
        }
    
    var contactNames : [String] = []
    var contacts = NSDictionary()
        
    @IBOutlet weak var TableViewOutlet: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        TableViewOutlet.delegate = self
        TableViewOutlet.dataSource = self
        fetchData()
    }

    func fetchData(){
        // create a database reference
        
        let databaseRef = Database.database().reference()
        
        databaseRef.observeSingleEvent(of: .value) { snapshot in
            
            let contacts = snapshot.value as! NSDictionary
            
            self.contactNames = contacts.allKeys as! [String]
            
            //reload the data
            self.TableViewOutlet.reloadData()
        }
    }
        
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let transition = segue.identifier
        if transition == "showInfoSegue"{
            let destination = segue.destination as! ContactInfoViewController
            let contactClicked = contactNames[(TableViewOutlet.indexPathForSelectedRow?.row)!]
            for(key,value) in self.contacts{
                if key as! String == contactClicked{
                    for (key1, value1) in value as! [String:Any]{
                        
                        if key1 == "Email"{
                            destination.email = value1 as! String
                        }
                        else if key1 == "PhoneNumber"{
                            destination.phoneNum = value1 as! Int
                        }
                    }
                }
                print(key)//string
                print(value)// dictionary
            }
        }
    }


}
