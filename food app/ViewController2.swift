//
//  ViewController2.swift
//  food app
//
//  Created by Apple on 12/02/2022.
//

import UIKit

class ViewController2: UIViewController,UICollectionViewDelegate,UICollectionViewDataSource {
    var dishes : [String] = ["nadiya","shawarma","roast","chicken shawarma"]
    @IBOutlet weak var homr: UILabel!
    @IBOutlet weak var collection: UICollectionView!
    override func viewDidLoad() {
        super.viewDidLoad()
        var first = FView()
        let nib = UINib(nibName: "Propercollectionviewcell", bundle: nil)
        collection.register(nib, forCellWithReuseIdentifier: "cells")
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return dishes.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cells = collection.dequeueReusableCell(withReuseIdentifier: "cells", for: indexPath) as! Propercollectionviewcell
        cells.view.layer.borderWidth = 1
        cells.view.layer.cornerRadius = 40
        cells.view.layer.borderColor = UIColor.orange.cgColor
        cells.imge.layer.cornerRadius = 35
        cells.imge.image = UIImage(named: dishes[indexPath.row])
        return cells
    }
    
}
