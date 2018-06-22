//
//  PlacesController.swift
//  Places
//
//  Created by Jeffrey Carpenter on 6/21/18.
//  Copyright © 2018 Uvolabs. All rights reserved.
//

import Foundation

class PlacesController {
    
    let places: [Place]
    
    init() {
        places = [Place(name: "NYC", lastVisit: "June 2015"), Place(name: "Mexico", lastVisit: "2012"), Place(name: "England", lastVisit: "Jan 2018"), Place(name: "Las Vegas", lastVisit: "Feb 2017")]
    }
    
}
