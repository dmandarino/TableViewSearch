//
//  ViewController.swift
//  TableViewAula
//
//  Created by Douglas Mandarino on 8/29/16.
//  Copyright © 2016 Douglas. All rights reserved.
//

import UIKit

struct Product {
    var name: String
    var category: String
}

class ViewController: UITableViewController {
    
    var products: [Product] = [Product]()
    var productSelected: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.tableView.separatorStyle = .SingleLine
        
        products = [
            Product(name:"Caneta", category: "caneta"),
            Product(name:"Caneta Rosa", category: "caneta"),
            Product(name:"Caneta Redonda", category: "caneta"),
            Product(name:"Caneta Preta", category: "caneta"),
            Product(name:"Borracha", category: "borracha"),
            Product(name:"Borracha Pequena", category: "borracha"),
            Product(name:"Borracha Branca", category: "borracha"),
            Product(name:"Borracha Escolar", category: "borracha"),
            Product(name:"Marcador Verde", category: "marcador"),
            Product(name:"Marcador Branco", category: "marcador"),
            Product(name:"Marcador Preto", category: "marcador"),
            Product(name:"Lapis Preto", category: "lapis"),
            Product(name:"Lapis", category: "lapis"),
            Product(name:"Lapis Branco", category: "lapis")
        ]
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        
        return 1
    } 
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return products.count
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
    
        let cell = UITableViewCell(style: .Subtitle, reuseIdentifier: "material")
        
        let product = products[indexPath.row]
        
        cell.textLabel?.text = product.name
        cell.detailTextLabel?.text = product.category
        
        return cell
    }
    
    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        tableView.deselectRowAtIndexPath(indexPath, animated: true)
        
        let row = indexPath.row
        
        productSelected = products[row].name
        self.performSegueWithIdentifier("showProduct", sender: self)
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject!) {
        if (segue.identifier == "showProduct") {
            
            self.navigationItem.backBarButtonItem = UIBarButtonItem(title:"", style:.Plain, target:nil, action:nil)
            let product = segue.destinationViewController as! ProductViewController
            product.productName = productSelected
        }
    }
}

