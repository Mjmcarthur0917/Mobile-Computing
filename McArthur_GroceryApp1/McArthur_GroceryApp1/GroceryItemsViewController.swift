//
//  GroceryItemsViewController.swift
//  McArthur_GroceryApp1
//
//  Created by Student on 4/12/22.
//

import UIKit

class GroceryItemsViewController: UIViewController {

    @IBOutlet weak var groceryItemsTableView: UITableView!
    
    var groceryItems:[GroceryItem] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()

        groceryItemsTableView.delegate = self
        groceryItemsTableView.dataSource = self
        // Do any additional setup after loading the view.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "itemInfoSegue"{
            let destination = segue.destination as! ItemInfoViewController
            
            destination.groceryItem = groceryItems[groceryItemsTableView.indexPathForSelectedRow!.row]
        }
    }
}
extension GroceryItemsViewController:UITableViewDelegate,UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return groceryItems.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "itemCell", for: indexPath)
        cell.textLabel?.text = groceryItems[indexPath.row].itemName
        return cell
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


