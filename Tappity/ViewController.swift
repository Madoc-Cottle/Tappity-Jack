//
//  ViewController.swift
//  Tappity
//
//  Created by Jack Carey on 30/5/17.
//  Copyright © 2017 Jack Carey. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    // MARK: - Outlets
    
    @IBOutlet var myView: UIView!
    
    @IBOutlet weak var tapButton: UIButton!
    @IBOutlet weak var userScore: UILabel!
    @IBOutlet weak var timeRemaining: UILabel!

    @IBOutlet weak var tapHeightConstraint: NSLayoutConstraint!
    @IBOutlet weak var tapWidthConstraint: NSLayoutConstraint!
    
    @IBOutlet weak var tapHozCenter: NSLayoutConstraint!
    @IBOutlet weak var tapVertCenter: NSLayoutConstraint!
    
    // MARK: - Globals
    
    var firstTap = true
    var timeCounter = 30
    var score = 0
    
    let colorCycle = [UIColor.red, UIColor.blue, UIColor.green, UIColor.yellow, UIColor.purple, UIColor.brown, UIColor.orange, UIColor.white, UIColor.cyan, UIColor.gray]
    
    //MARK: - Functions
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //set the tap button to be a quater of the screen size
        let screenBounds = UIScreen.main.bounds
        let buttonSize = 0.25 * screenBounds.width
        tapHeightConstraint.constant = buttonSize
        tapWidthConstraint.constant = buttonSize
        
        //set labels correctly
        timeRemaining.text = "\(timeCounter)"
        userScore.text = "\(score)"
        
    }
    
    
    @IBAction func buttonTapped(_ sender: UIButton) {
        
        if (firstTap) {
            firstTap = false
            //count down
            let _ = Timer.scheduledTimer(withTimeInterval: 1, repeats: true) { (timer) in
                self.timeCounter -= 1
                self.timeRemaining.text = "\(self.timeCounter)"
                
                if (self.timeCounter == 0){
                    timer.invalidate()
                    self.finishedGame()
                }
                
            }
        } else {
            score += 1
            userScore.text = "\(score)"
            myView.backgroundColor = colorCycle[Int(arc4random_uniform(UInt32(colorCycle.count)))]
        }
        
    }
    
    func finishedGame(){
        let alert = UIAlertController(title: "Game Over", message: "Your score was \(score)", preferredStyle: .actionSheet)
        alert.addAction(UIAlertAction(title: "Dismiss", style: .destructive, handler: nil))
        self.present(alert, animated: true, completion: resetGame)
    }
    
    func resetGame(){
        score = 0
        timeCounter = 30
        firstTap = true
        timeRemaining.text = "\(timeCounter)"
        userScore.text = "\(score)"
    }
    


}

