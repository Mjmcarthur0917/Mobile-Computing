//
//  ViewController.swift
//  McArthur_Movies
//
//  Created by Student on 4/28/22.
//

import UIKit

class GenreViewController: UIViewController, UITableViewDelegate, UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return genre.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var cell = GenreTableView.dequeueReusableCell(withIdentifier: "movieCell", for: indexPath)
        //Assign the data to the cell.
        cell.(with: movies[indexPath.row])
        //return cell
        return cell
    }

    @IBOutlet weak var GenreTableView: UITableView!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

