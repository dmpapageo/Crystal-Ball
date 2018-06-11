//
//  ViewController.swift
//  Coding Challenge 2
//
//  Created by Dimitrios Papageorgiou on 6/8/18.
//  Copyright © 2018 Dimitrios Papageorgiou. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var randomMessageIndex = 0
    
    let randomCrystalMessage = [
        "It's possible",
        "Certainly",
        "Ask again later",
        "If you try hard enough",
        "I don't think so~",
        "I have no clue"
    ]
   
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        newCrystalMessage()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBOutlet weak var CrystalMessage: UILabel!
   
    @IBAction func AskButtonPressed(_ sender: UIButton) {
    
        newCrystalMessage()
    }
    
    func newCrystalMessage(){
        
        randomMessageIndex = Int(arc4random_uniform(6)) //random
        
        CrystalMessage.text = String(randomCrystalMessage[randomMessageIndex])

    }
}

