//
//  ViewController.swift
//  CollectionView
//
//  Created by Gamze Akyüz on 12.01.2024.
//

import UIKit

class ViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {

    
    
    @IBOutlet weak var collection: UICollectionView!

    var animals:[String] = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        animals = ["Rabbit","Tigger","Dog","Cat","Fish","Monkey","Turtle","Leon"]
        
        collection.delegate = self
        collection.dataSource = self
        
        let design:UICollectionViewFlowLayout = UICollectionViewFlowLayout()
        
        let width =  self.collection.frame.size.width
//        let height = self.collection.frame.size.height
        
        design.sectionInset = UIEdgeInsets(top: 10, left: 10, bottom: 10, right: 10)
        
        design.itemSize = CGSize(width: (width-30)/3, height: (width-30)/3)
        
        design.minimumInteritemSpacing = 5
        design.minimumLineSpacing = 5
        
        
        collection!.collectionViewLayout = design
        
        
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return animals.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! CollectionViewCell
        cell.nameLabel.text = animals[indexPath.row]
        cell.layer.borderColor = UIColor.black.cgColor
        cell.layer.borderWidth = 2
        return cell
    }
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }

    
    


}

