//
//  Store.swift
//  food app
//
//  Created by Apple on 02/04/2022.
//

import UIKit

class Store: UIViewController{
   
    @IBOutlet weak var immage: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
     imageset()
        
    }
    func imageset()
    {
        immage.layer.cornerRadius = 65
        let img = UIImage(named: "burger")
        immage.image = img
    }
}
