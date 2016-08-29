//
//  ViewController.swift
//  TableViewAula
//
//  Created by Douglas Mandarino on 8/29/16.
//  Copyright © 2016 Douglas. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    
    var countries: [String] = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        countries = ["Brasil", "Estados Unidos", "Inglaterra", "Espanha", "Alemanha", "Japao", "Mexico", "Argentina", "Paraguai", "Franca", "Irlanda", "China"]
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        
        return 1
    } 
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return countries.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCellWithIdentifier("countryCell", forIndexPath: indexPath)
        
        let countryName = countries[indexPath.row]
        
        cell.textLabel?.text = countryName
        
        return cell
    }
}

