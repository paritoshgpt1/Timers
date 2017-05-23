//
//  ViewController.swift
//  Timers
//
//  Created by Paritosh Gupta on 18/05/17.
//  Copyright © 2017 Paritosh Gupta. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var timerLabel: UILabel!
    var timer = Timer()
    var counter = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        counter = 10
        timerLabel.text = String(counter)
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(ViewController.timerFunction), userInfo: nil, repeats: true)
    }
    
    func timerFunction() {
        // our function for timer
        timerLabel.text = String(counter)
        counter -= 1
        
        if counter == 0 {
            timer.invalidate()
            timerLabel.text = "Time is up!"
        }
    }


}

