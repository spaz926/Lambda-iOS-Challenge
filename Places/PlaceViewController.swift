//
//  PlaceViewController.swift
//  Places
//
//  Created by Jeffrey Carpenter on 6/14/18.
//  Copyright © 2018 Uvolabs. All rights reserved.
//

import UIKit

class PlaceViewController: UIViewController {
    
    var place = String()
    var lastVisited = String()
    
    @IBOutlet weak var lastVisitText: UITextView!
    
    @IBAction func showLastVisited(_ sender: UIButton) {
        
        lastVisitText.isHidden = false
        lastVisitText.text = "I last visited \(place) in \(lastVisited)"
        
    }
    
}
