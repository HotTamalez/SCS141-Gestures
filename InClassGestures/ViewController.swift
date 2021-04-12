//
//  ViewController.swift
//  InClassGestures
//
//  Created by zweakland on 4/8/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var redImsge: UIImageView!
    @IBOutlet weak var tapLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        // the user can interact with the label object
        tapLabel.isUserInteractionEnabled = true
        
        // create the tap gesture
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(self.tapLabel(recognizer:)))
        
        // how many fingures need to be on the screen when tapped
        tapGesture.numberOfTouchesRequired = 1
        // how many taps needed to perform an action
        tapGesture.numberOfTapsRequired = 3
        
        // connecting the label object to the tap gesture
        // tapLabel.addGestureRecognizer(tapGesture)
        
        
        // create swipe gesture
        let swipeGesture = UISwipeGestureRecognizer(target: self, action: #selector(self.swipeLabel(recogizer:)))
        
        // change direction of the swipe
        swipeGesture.direction = .up
        
        tapLabel.addGestureRecognizer(swipeGesture)
        
        
    }
    
    
    
    // the functionality when I tap my label
    @objc func tapLabel(recognizer:UITapGestureRecognizer) {
        tapLabel.backgroundColor = .blue
    }

    // the functionality when I swipe my label
    @objc func swipeLabel(recogizer:UISwipeGestureRecognizer){
        tapLabel.backgroundColor = .yellow
    }

    
    
    @IBAction func tapGesture(_ sender: Any) {
        redImsge.backgroundColor = .orange
    }
}

