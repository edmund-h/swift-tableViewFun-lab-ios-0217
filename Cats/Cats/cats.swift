//
//  cats.swift
//  Cats
//
//  Created by Edmund Holderbaum on 2/13/17.
//  Copyright © 2017 Flatiron School. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController{
    
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return alphabet.count
    } //there should be one section for each letter of the alphabet
    
    override func sectionIndexTitles(for tableView: UITableView) -> [String]? {
        return alphabet
    } //sections should correspond to letters of the alphabet
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        let myKey = alphabet[section]
        guard let rows = catBreeds[myKey]?.count else { return 0 }
        return rows
    } //number of rows in section should be taken from amount of items in array at each letter in dictionary
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "kittyCell", for: indexPath)
        let myKey = alphabet[indexPath.section]
        //⬆️grabs key from alphabet ⬆️ordinally by section
        let myBreed = catBreeds[myKey]?[indexPath.row]
        //grabs a cat breed ⬆️ from array corresponding to letter by row
        cell.textLabel?.text = myBreed
        //sets text of label equal to cat breed
        return cell
    }//data in each section row should be taken from the corresponding item in the section letter's array
}

let catBreeds = [
    "A": ["Abyssinian","American Bobtail","American Curl","American Shorthair","American Wirehair"],
    "B": ["Balinese","Bengal","Birman","Bombay","British Shorthair","Burmese"],
    "C": ["Chartreux","Chausie","Cornish Rex"],
    "D": ["Devon Rex","Donskoy"],
    "E": ["Egyptian Mau ","Exotic Shorthair"],
    "H": ["Havana","Highlander ","Himalayan"],
    "J": ["Japanese Bobtail"],
    "K": ["Korat","Kurilian Bobtail"],
    "L": ["LaPerm"],
    "M": ["Maine Coon","Manx","Minskin","Munchkin"],
    "N": ["Nebelung","Norwegian Forest Cat"],
    "O": ["Ocicat","Ojos Azules","Oriental"],
    "P": ["Persian","Peterbald","Pixiebob"],
    "R": ["Ragdoll","Russian Blue"],
    "S": ["Savannah","Scottish Fold","Selkirk Rex","Serengeti","Siberian","Siamese","Singapura","Snowshoe","Sokoke","Somali","Sphynx"],
    "T": ["Thai","Tonkinese","Toyger","Turkish Angora","Turkish Van"],
]

let alphabet = [ "A","B","C","D","E","F","G","H","I","J","K","L","M","N","O","P","Q","R","S","T","U","V","W","X","Y","Z"]
