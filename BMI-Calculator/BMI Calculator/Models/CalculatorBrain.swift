//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Münevver Elif Ay on 7.02.2023.
//  Copyright © 2023 Angela Yu. All rights reserved.
//

import Foundation

struct CalculatorBrain {
    
    var bmi: Float?
    
    func getBMIValue() -> String {
        let bmiTo1DecimalPlace = String(format: "%.1f", bmi ?? 0.0)
        return bmiTo1DecimalPlace
    }
    
    mutating func calculateBMI(height: Float, weight: Float){
        bmi = weight / pow((height), 2)

    }
    
}
