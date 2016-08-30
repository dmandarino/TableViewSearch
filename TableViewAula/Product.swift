//
//  Product.swift
//  TableViewAula
//
//  Created by Douglas Mandarino on 8/30/16.
//  Copyright © 2016 Douglas. All rights reserved.
//

import UIKit

class ProductViewController: UIViewController {
    
    @IBOutlet weak var name: UILabel!
    @IBOutlet weak var image: UIImageView!
    
    var productName:String?
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
    
        self.name.text = productName         self.image.image = UIImage(named: productName!)
    }

}