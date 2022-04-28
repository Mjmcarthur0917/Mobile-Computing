//
//  MovieCollectionViewCell.swift
//  McArthur_Movies
//
//  Created by Student on 4/28/22.
//

import UIKit

class MovieCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var ImageViewOutlet: UIImageView!
    
    func assignMovies(with movie: Movie){
            ImageViewOutlet.image = movie.image
        }
}
