//
//  ViewController.swift
//  斯坦福2
//
//  Created by 上海海洋大学 on 17/3/31.
//  Copyright © 2017年 上海海洋大学. All rights reserved.
//

import UIKit

class ViewController: UIViewController {


    
    @IBOutlet weak var display: UILabel!
    
    var  userIsInTheMiddleOfTyping = false
    
    @IBAction func touchDigit(_ sender: UIButton) {
        
        let digit = sender.currentTitle!
        if userIsInTheMiddleOfTyping{
        let textCurrentlyInDisplay = display.text!
        display.text = textCurrentlyInDisplay + digit
        }else {
            display!.text = digit
            userIsInTheMiddleOfTyping = true
        }
}
    var displayValue:Double{
        get{
            return Double(display.text!)!
        }
            set{
                display.text = String(newValue)
            }
    
    }
    @IBAction func performOperation(_ sender: UIButton) {
        userIsInTheMiddleOfTyping = false
        if let mathematicalSymbol = sender.currentTitle {
            switch mathematicalSymbol{
                case "π":
                display.text = String(Double.pi)
                case "√":
                displayValue = sqrt(displayValue)
            default:
                break
            }
        }
        
    }
    
    
    
}
    
    
    
    
    
    
    

    
    
    
    
    
    
    
    
    
