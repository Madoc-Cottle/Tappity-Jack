//
//  HighScoreViewController.swift
//  Tappity
//
//  Created by Jack Carey on 1/6/17.
//  Copyright © 2017 Jack Carey. All rights reserved.
//

import UIKit

class HighScoreViewController: UIViewController {
    
    
    @IBOutlet var highScoreLabels: [UILabel]!
    
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(true)
        for i in 0..<10 {
            highScoreLabels[i].text! = String(UserDefaults.standard.integer(forKey: "score\(i)"))
        }
    }

}
