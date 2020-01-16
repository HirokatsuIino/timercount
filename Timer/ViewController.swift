//
//  ViewController.swift
//  Timer
//
//  Created by higuchiryunosuke on 2020/01/16.
//  Copyright © 2020 higuchiryunosuke. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var OurTImer = Timer()
    var TimerDisplayed = 0
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var start: UIButton!
    @IBOutlet weak var pause: UIButton!
    @IBOutlet weak var reset: UIButton!
    
    @IBAction func startButton(_ sender: Any) {
        OurTImer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(Action), userInfo: nil, repeats: true)
    }
    @IBAction func pauseButton(_ sender: Any) {
        OurTImer.invalidate()
    }
    @IBAction func resetButton(_ sender: Any) {
        OurTImer.invalidate()
        TimerDisplayed = 0
        label.text = "0"
    }
    @objc func Action() {
        TimerDisplayed += 1
        label.text = String(TimerDisplayed)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        start.layer.cornerRadius = 10.0
        start.clipsToBounds = true
        start.layer.borderWidth = 1
        start.layer.borderColor = UIColor.green.cgColor
        
        pause.layer.cornerRadius = 10.0
        pause.clipsToBounds = true
        pause.layer.borderWidth = 1
        pause.layer.borderColor = UIColor.green.cgColor
        
        reset.layer.cornerRadius = 10.0
        reset.clipsToBounds = true
        reset.layer.borderWidth = 1
        reset.layer.borderColor = UIColor.green.cgColor
    }
}

