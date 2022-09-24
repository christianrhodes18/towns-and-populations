//
//  ViewController.swift
//  Counter
//
//  Created by Christian Rhodes on 9/13/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var plusButton: UIButton!
    @IBOutlet var minusButton: UIButton!
    @IBOutlet var valueLabel: UILabel!
    var value: Int = 0
    
    @IBAction func increment(_ sender: UIButton) {
        value += 1
        
        if (value < 0) {
            valueLabel.text = String(value)
            valueLabel.textColor = UIColor.systemRed
        }
        else if (value > 0) {
            valueLabel.text = String(value)
            valueLabel.textColor = UIColor.systemBlue
        }
        else {
            valueLabel.text = "zero"
            valueLabel.textColor = UIColor.black
        }
    }
    
    @IBAction func decrement(_ sender: UIButton) {
        value -= 1
        
        if (value < 0) {
            valueLabel.text = String(value)
            valueLabel.textColor = UIColor.systemRed
        }
        else if (value > 0) {
            valueLabel.text = String(value)
            valueLabel.textColor = UIColor.systemBlue
        }
        else {
            valueLabel.text = "zero"
            valueLabel.textColor = UIColor.black
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
}

