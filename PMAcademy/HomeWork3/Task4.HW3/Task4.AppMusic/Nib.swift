//
//  Nib.swift
//  Task4.AppMusic
//
//  Created by Ангелина Косенко on 24.12.2020.
//

import Foundation
import UIKit

extension UIView {
    class func loadFromNib<T: UIView>() -> T {
        return Bundle.main.loadNibNamed(String(describing: T.self), owner: nil, options: nil)![0] as! T
    }
}
