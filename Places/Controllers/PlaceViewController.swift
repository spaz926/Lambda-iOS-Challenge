//
//  PlaceViewController.swift
//  Places
//
//  Created by Jeffrey Carpenter on 6/14/18.
//  Copyright © 2018 Uvolabs. All rights reserved.
//

import UIKit

class PlaceViewController: UIViewController {
    
    var place: Place?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        guard let place = place else { return }
        self.title = place.name
        
    }
    
    @IBOutlet weak var lastVisitText: UITextView!
    
    @IBAction func showLastVisited(_ sender: UIButton) {
        
        guard let place = place else { return }
        
        lastVisitText.isHidden = false
        lastVisitText.text = "I last visited \(place.name) in \(place.lastVisit)"
        
    }
    
    
}
