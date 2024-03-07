//
//  favouriteView.swift
//  food app
//
//  Created by Apple on 03/04/2022.
//

import UIKit

class favouriteView: UIViewController, UITableViewDataSource,UITableViewDelegate {
    @IBOutlet weak var Tablecell: UITableView!
    var dishes : [String] = ["nadiya","shawarma","roast","chicken shawarma","nadiya","shawarma","roast","chicken shawarma","nadiya","shawarma","roast","chicken shawarma"]
    override func viewDidLoad() {
        super.viewDidLoad()
        Tablecell.dataSource = self
        Tablecell.delegate = self
        let nib = UINib(nibName: "Favouritecell", bundle: nil)
        Tablecell.register(nib, forCellReuseIdentifier: "cells")
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dishes.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cells = Tablecell.dequeueReusableCell(withIdentifier: "cells", for: indexPath) as! Favouritecell
        cells.btn.layer.cornerRadius = 15
        cells.btn.layer.borderWidth = 1
        cells.btn.layer.borderColor = UIColor.orange.cgColor
        cells.imge.layer.cornerRadius = 35
        cells.imge.image = UIImage(named: dishes[indexPath.row])
        return cells
    }
}
