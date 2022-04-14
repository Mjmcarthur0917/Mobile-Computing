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

let section1 = GrocerySections(section: "Meat and Seafood" , items:
                                [GroceryItem(itemName: "beef and lamb" , itemInfo: "Beef is very good for you with a high amount of vitamins and minerals. There are many way you can prepare steak and many ways that you can cook it. Lamb is also a very delicious meat and highly sought after.", itemImage: "Beef"),
                                GroceryItem(itemName: "Chicken" , itemInfo: "Chicken is a very important meat. It is high in protien and low in fat. This makes it a good meat for building muscle.", itemImage: "Chicken"),
                                
                                GroceryItem(itemName: "Turkey" , itemInfo: "Turkey is a very healthy meat just like chicken is. The majority of turkey is eaten at thanksgiving time. It is high in protien and low in fat.", itemImage: "Turkey"),
                                ])

let section2 = GrocerySections(section: "Pantry" , items:
                                [GroceryItem(itemName: "beef and lamb" , itemInfo: "Beef is very good for you with a high amount of vitamins and minerals. There are many way you can prepare steak and many ways that you can cook it. Lamb is also a very delicious meat and highly sought after.", itemImage: "Beef"),
                                GroceryItem(itemName: "Chicken" , itemInfo: "Chicken is a very important meat. It is high in protien and low in fat. This makes it a good meat for building muscle.", itemImage: "Chicken"),
                                
                                GroceryItem(itemName: "Turkey" , itemInfo: "Turkey is a very healthy meat just like chicken is. The majority of turkey is eaten at thanksgiving time. It is high in protien and low in fat.", itemImage: "Turkey"),
                                ])

let section3 = GrocerySections(section: "Frozen" , items:
                                [GroceryItem(itemName: "beef and lamb" , itemInfo: "Beef is very good for you with a high amount of vitamins and minerals. There are many way you can prepare steak and many ways that you can cook it. Lamb is also a very delicious meat and highly sought after.", itemImage: "Beef"),
                                GroceryItem(itemName: "Chicken" , itemInfo: "Chicken is a very important meat. It is high in protien and low in fat. This makes it a good meat for building muscle.", itemImage: "Chicken"),
                                
                                GroceryItem(itemName: "Turkey" , itemInfo: "Turkey is a very healthy meat just like chicken is. The majority of turkey is eaten at thanksgiving time. It is high in protien and low in fat.", itemImage: "Turkey"),
                                ])

let section4 = GrocerySections(section: "Beverages" , items:
                                [GroceryItem(itemName: "beef and lamb" , itemInfo: "Beef is very good for you with a high amount of vitamins and minerals. There are many way you can prepare steak and many ways that you can cook it. Lamb is also a very delicious meat and highly sought after.", itemImage: "Beef"),
                                GroceryItem(itemName: "Chicken" , itemInfo: "Chicken is a very important meat. It is high in protien and low in fat. This makes it a good meat for building muscle.", itemImage: "Chicken"),
                                
                                GroceryItem(itemName: "Turkey" , itemInfo: "Turkey is a very healthy meat just like chicken is. The majority of turkey is eaten at thanksgiving time. It is high in protien and low in fat.", itemImage: "Turkey"),
                                ])
