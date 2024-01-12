//
//  SecondViewController.swift
//  CollectionView
//
//  Created by Gamze Akyüz on 12.01.2024.
//

import UIKit

class SecondViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource, FilmCellProtocol {

    @IBOutlet weak var collection: UICollectionView!
    
    var filmList = [Films]()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        collection.dataSource = self
        collection.delegate = self
        
        let design: UICollectionViewFlowLayout = UICollectionViewFlowLayout()
        let x = self.collection.frame.size.width
        
        design.sectionInset = UIEdgeInsets(top: 10, left: 10, bottom: 10, right: 10)
        design.minimumInteritemSpacing = 10
        design.minimumLineSpacing = 10
        
        let y = (x-30)/2
        
        design.itemSize = CGSize(width: y, height: y*1.6)
        collection!.collectionViewLayout = design
        
        let f1 = Films(filmId: 1, filmName: "Titanic", filmImage: "titanic", filmPrice: 55)
        let f2 = Films(filmId: 2, filmName: "Harry Potter", filmImage: "harrypotter", filmPrice: 80)
        let f3 = Films(filmId: 3, filmName: "Thor", filmImage: "thor", filmPrice: 120)
        let f4 = Films(filmId: 4, filmName: "Amelie", filmImage: "amelie", filmPrice: 65)
        let f5 = Films(filmId: 5, filmName: "Avatar", filmImage: "avatar", filmPrice: 160)
        
        filmList.append(f1)
        filmList.append(f2)
        filmList.append(f3)
        filmList.append(f4)
        filmList.append(f5)
        
    }
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return filmList.count
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let film = filmList[indexPath.row]
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! SecondCollectionViewCell
        
        cell.filmNameLabel.text = film.filmName
        cell.filmPriceLabel.text = "\(film.filmPrice!) TL"
        cell.filmImageView.image = UIImage(named: film.filmImage!)
        
        cell.cellProtocol = self
        cell.indexPath = indexPath
        
        cell.layer.borderColor = UIColor.black.cgColor
        cell.layer.borderWidth = 1
        
        return cell
    }
    func buyAdd(indexPath: IndexPath) {
        let film = filmList[indexPath.row]
        print("Film Price : \(film.filmPrice!) buying")
    }
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let film = filmList[indexPath.row]
        print("Film Name: \(film.filmName!) selected")
    }

}
