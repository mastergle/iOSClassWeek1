//
//  ViewController.swift
//  SampleApp
//
//  Created by Barry, Elh on 11/7/16.
//  Copyright © 2016 Barry, Elh. All rights reserved.
//

import UIKit

class RandomGeneratorViewController: UIViewController {
    
    @IBOutlet var lowerBoundField: UITextField!
    @IBOutlet var upperBoundField: UITextField!
    
    @IBOutlet var resultLabel: UILabel!
    
    @IBAction func dismissKeybard() {
        view.endEditing(true)
    }
    
    @IBAction func generate() {
        dismissKeybard()
        let start:Int? = Int(lowerBoundField.text!)
        let end:Int? = Int(upperBoundField.text!)
        
        if (start != nil && end != nil && start! <= end!) {
            let random = start! + Int(arc4random_uniform(UInt32(end! - start! + 1)))
            resultLabel.text = "Result: \(random)"
        }
    }
}
