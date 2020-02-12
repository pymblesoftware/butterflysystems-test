//
//  CalculatorViewModel.swift
//  ButterflySystemsTest
//
//  Created by Regan Russell on 12/2/20.
//  Copyright © 2020 Regan Russell. All rights reserved.
//

// Not sure if this is meant to be MVVM, VIPER, VIP, or MVC.
// Also could have been done in Objective-C
// Also could have been machine converted: www.objective-c2swift.com

import UIKit

class CalculatorViewModel: NSObject {
    
    class func calculate(firstNumber : Int, secondNumber: Int, operand: String ) -> Int {
        var result = 0
        
        switch operand {
        case "+":
            result = firstNumber + secondNumber
         case "-":
            result = firstNumber - secondNumber
         case "*":
            result = firstNumber * secondNumber
         case "/":
            if secondNumber != 0 {
                result = firstNumber / secondNumber
            }
            else {
                result = 0
            }
        default:
            result = 0
        }
        return result
    }

}
