//
//  cats.swift
//  Cats
//
//  Created by Edmund Holderbaum on 2/13/17.
//  Copyright © 2017 Flatiron School. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController{
    let catBreeds = [
        "Abyssinian","American Bobtail","American Curl","American Shorthair","American Wirehair","Balinese","Bengal","Birman","Bombay","British Shorthair","Burmese","Chartreux","Chausie","Cornish Rex","Devon Rex","Donskoy","Egyptian Mau ","Exotic Shorthair","Havana","Highlander ","Himalayan","Japanese Bobtail","Korat","Kurilian Bobtail","LaPerm","Maine Coon","Manx","Minskin","Munchkin","Nebelung","Norwegian Forest Cat","Ocicat","Ojos Azules","Oriental","Persian","Peterbald","Pixiebob","Ragdoll","Russian Blue","Savannah","Scottish Fold","Selkirk Rex","Serengeti","Siberian","Siamese","Singapura","Snowshoe","Sokoke","Somali","Sphynx","Thai","Tonkinese","Toyger","Turkish Angora","Turkish Van"
    ]
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return catBreeds.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "kittyCell", for: indexPath)
        
        let myBreed = catBreeds[indexPath.row]
        
        cell.textLabel?.text = myBreed
        
        return cell
    }
}
