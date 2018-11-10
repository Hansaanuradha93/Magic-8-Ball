//
//  ViewController.swift
//  Magic 8 Ball
//
//  Created by Hansa Anuradha on 11/10/18.
//  Copyright © 2018 Hansa Anuradha. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let ballImageNames = ["ball1", "ball2", "ball3", "ball4", "ball5"]
    
    var randomBallAnswerIndex = 0
    
    // Label connetion
    @IBOutlet weak var ballImageView: UIImageView!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Update Ball Images
        updateBallImages()
    }
    
    // Button action
    @IBAction func askMePressed(_ sender: Any) {
        // Update Ball Images
        updateBallImages()
    }
    
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        // Update Ball Images
        updateBallImages()
    }
    
    func updateBallImages() {
        randomBallAnswerIndex = Int.random(in: 0 ... 4)
        //print(randomBallAnswerIndex)
        print(ballImageNames[randomBallAnswerIndex])
        ballImageView.image = UIImage(named: ballImageNames[randomBallAnswerIndex])
    }
    
    


}

