//
//  ViewController.swift
//  Tappity
//
//  Created by Jack Carey on 30/5/17.
//  Copyright © 2017 Jack Carey. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var tapButton: UIButton!
    @IBOutlet weak var userScore: UILabel!
    @IBOutlet weak var timeRemaining: UILabel!

    @IBOutlet weak var tapHeightConstraint: NSLayoutConstraint!
    @IBOutlet weak var tapWidthConstraint: NSLayoutConstraint!
    
    @IBOutlet weak var tapHozCenter: NSLayoutConstraint!
    @IBOutlet weak var tapVertCenter: NSLayoutConstraint!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //set the tap button to be a quater of the screen size
        tapHeightConstraint.constant = 250
        tapWidthConstraint.constant = 20
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

