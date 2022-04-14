//
//  ViewController.swift
//  McArthur_GroceryApp1
//
//  Created by Student on 4/12/22.
//

import UIKit

class GrocerySectionsViewController: UIViewController {
    
    let groceries = GroceryArray
    

    @IBOutlet weak var grocerySectionsTableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "itemsSegue"{
            let destination = segue.destination as! GroceryItemsViewController
            
            destination.groceryItems = groceries[grocerySectionsTableView.indexPathForSelectedRow!.row].items
            
        }
    }

}
extension
GrocerySectionsViewController:UITableViewDelegate, UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section:Int)-> Int {
        return groceries.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var cell = grocerySectionsTableView.dequeueReusableCell(withIdentifier: "sectionCell", for: indexPath)
        cell.textLabel?.text = groceries[indexPath.row].section
        return cell
    }
}
