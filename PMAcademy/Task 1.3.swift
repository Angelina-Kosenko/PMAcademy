//
//  Task 1.3.swift
//  PMAcademy
//
//  Created by Ангелина Косенко on 10.12.2020.
//

import Foundation

let x = 1.23556789
let y = Double(round(Double(1000*x))/1000)
print(y)

//

func pi(to n: Int) -> Double {
        let factor = (pow(10, n) as NSDecimalNumber).doubleValue
        let piResult: Double = Double(round(Double.pi * factor) / factor)
        if(n < 1 || n > 14){
            print("Please input range from 1 to 14")
        }else{
            print(piResult)
        }
        return piResult
    }

  pi(to: 5)
