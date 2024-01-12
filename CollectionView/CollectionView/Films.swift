//
//  Films.swift
//  CollectionView
//
//  Created by Gamze Akyüz on 12.01.2024.
//

import Foundation

class Films{
    
    var filmId: Int?
    var filmName:String?
    var filmImage:String?
    var filmPrice:Double?
    
    init() {
        
    }
    
    init(filmId: Int, filmName: String, filmImage: String, filmPrice: Double) {
        self.filmId = filmId
        self.filmName = filmName
        self.filmImage = filmImage
        self.filmPrice = filmPrice
    }
    
}
