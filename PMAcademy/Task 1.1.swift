//
//  Task 1.1.swift
//  PMAcademy
//
//  Created by Ангелина Косенко on 10.12.2020.
//

import Foundation
import Foundation

func fibonacci(n: Int) {

    var num1 = 0
    var num2 = 1

    print(num1)
    print(num2)

    for _ in 0 ..< n {
    
        let num = num1 + num2
        num1 = num2
        num2 = num

        print(num2)
    }

}

print(fibonacci(n: 8))
