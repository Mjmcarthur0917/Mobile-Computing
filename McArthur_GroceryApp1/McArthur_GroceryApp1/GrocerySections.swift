//
//  GrocerySections.swift
//  McArthur_GroceryApp1
//
//  Created by Student on 4/12/22.
//

import Foundation

struct GrocerySections {
    
    var section = ""
    var items:[GroceryItem] = []
    
    
}
struct GroceryItem{
    
    var itemName = ""
    var itemInfo = ""
    var itemImage = ""
}

let section1 = GrocerySections(section: "Meat and Seafood" , items: [GroceryItem(itemName: "beef and lamb" , itemInfo: "This is the item information", itemImage: "Beef")])

