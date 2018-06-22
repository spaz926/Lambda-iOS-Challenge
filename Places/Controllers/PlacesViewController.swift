//
//  ViewController.swift
//  Places
//
//  Created by Jeffrey Carpenter on 6/14/18.
//  Copyright © 2018 Uvolabs. All rights reserved.
//

import UIKit

class PlacesViewController: UITableViewController {
    
    let placesController = PlacesController()
    
//    var places = ["Las Vegas": "Feb 2017", "NYC" : "June 2015", "Mexico": "2012", "England": "Jan 2018"]
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "PlacesCell", for: indexPath)
        let place = placesController.places[indexPath.row].name
        
        cell.textLabel?.text = place
        
        return cell
        
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return placesController.places.count
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "showPlaceDetail" {
            let destinationVC = segue.destination as? PlaceViewController

            guard let indexPath = tableView.indexPathForSelectedRow else { return }

            let place = placesController.places[indexPath.row]
            
            destinationVC?.place = place

        }
    }


}

