//
//  MovieData.swift
//  McArthur_Movies
//
//  Created by Student on 4/28/22.
//

import Foundation
import UIKit
struct Movie{
    
    let title:String
    let image:UIImage
    let releasedYear:String
    let movieRating:String
    let boxOffice:String
    let moviePlot:String
    let cast:String
    
}

struct Genre{
    
    let category:String
    let movie:[Movie]
}

let movies : [Movie] = [
    Movie(title:"Avatar",image:UIImage(named: "avatar")!,releasedYear: "2009",movieRating: "7.8",boxOffice: "2.847 Billion",moviePlot: "This movie is about humans going to a different planet to gather a precious material and have to deal with a species that lives there.",cast: ""),
    Movie(title:"Inception",image:UIImage(named: "inception")!,releasedYear: "2010",movieRating: "8.1",boxOffice: "836.8 Million",moviePlot: "They went into peoples dreams.",cast: ""),
    Movie(title:"I am Legend",image:UIImage(named: "legend")!,releasedYear: "2007",movieRating: "6.3",boxOffice: "585.4 Million",moviePlot: "He had to find a cure for a zombie outbreak.",cast: ""),
    Movie(title:"Super Troopers",image:UIImage(named: "super")!,releasedYear: "2001",movieRating: "5",boxOffice: "23.2 Million",moviePlot: "Highway patrol has to find a way to keep their jobs from funding shortage.",cast: ""),
    Movie(title:"Avengers: Endgame",image:UIImage(named: "avengers")!,releasedYear: "2019",movieRating: "8.2",boxOffice: "2.798 Billion",moviePlot: "Avengers needed to defeat Thanos.",cast: ""),
    
]

let genre: [Movie] = [
    Genre(category: "Action", movie: Movie),
    Genre(category: "Comedy", movie: Movie),
    Genre(category: "Suspense", movie: Movie),
]

