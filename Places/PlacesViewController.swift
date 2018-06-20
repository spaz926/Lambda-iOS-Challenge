//
//  ViewController.swift
//  Places
//
//  Created by Jeffrey Carpenter on 6/14/18.
//  Copyright © 2018 Uvolabs. All rights reserved.
//

import UIKit

class PlacesViewController: UITableViewController {
    
    var places = ["Las Vegas": "Feb 2017", "NYC" : "June 2015", "Mexico": "2012", "England": "Jan 2018"]
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "PlacesCell", for: indexPath)
        let place = Array(places.keys)[indexPath.row]
        
        cell.textLabel?.text = place
        
        return cell
        
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return places.count
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let place = Array(places.keys)[indexPath.row]
        
        self.performSegue(withIdentifier: "showPlaceDetail", sender: String(place))
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "showPlaceDetail" {
            if let placeViewController = segue.destination as? PlaceViewController {
                if let senderUnwrapped = sender as? String {
                    placeViewController.place = senderUnwrapped
                    if let lastVisited = places[senderUnwrapped] {
                        placeViewController.lastVisited = lastVisited
                    }
                }
            }
        }
    }


}

