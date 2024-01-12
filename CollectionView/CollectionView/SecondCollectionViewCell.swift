//
//  SecondCollectionViewCell.swift
//  CollectionView
//
//  Created by Gamze Akyüz on 12.01.2024.
//

import UIKit

protocol FilmCellProtocol {
    func buyAdd(indexPath:IndexPath)
}

class SecondCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var filmImageView: UIImageView!
    @IBOutlet weak var filmPriceLabel: UILabel!
    
    
    @IBOutlet weak var filmNameLabel: UILabel!
    
    var cellProtocol: FilmCellProtocol?
    
    var indexPath:IndexPath?
    
    
    
    @IBAction func buyButton(_ sender: Any) {
        
        cellProtocol?.buyAdd(indexPath: indexPath!)
        
    }
    
    
    
}
