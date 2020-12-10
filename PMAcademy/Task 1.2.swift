//
//  Task 1.2.swift
//  PMAcademy
//
//  Created by Ангелина Косенко on 10.12.2020.
//

import Foundation

import Foundation

func factorial(of num: Int) -> Int {
    if num == 1 {
        return 1
    } else {
        return num * factorial(of:num - 1)
    }
}

let x = 5
let result = factorial(of: x)
print("The factorial of \(x) is \(result)")
