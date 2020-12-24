//
//  ViewController.swift
//  Task2.HW3
//
//  Created by Ангелина Косенко on 21.12.2020.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var figure1: UIView!
    @IBOutlet weak var figure2: UIView!
    @IBOutlet weak var figure3: UIView!
    @IBOutlet weak var figure4: UIView!
    @IBOutlet weak var figure5: UIView!
    @IBOutlet weak var figure6: UIView!
    @IBOutlet weak var figure1width: NSLayoutConstraint!
    @IBOutlet weak var figure7: UIView!
    
    
    

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.figure3.layer.cornerRadius = self.figure3.bounds.height / 2
        self.figure5.layer.cornerRadius = self.figure3.bounds.height / 2
        self.figure6.layer.cornerRadius = self.figure3.bounds.height / 2
        
    }
    fileprivate func figure1Animation() {
        UIView.animate(withDuration: 1.5, delay: 2) {
            self.figure1.transform = CGAffineTransform.identity.scaledBy(x: 2, y: 2)
        }
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        figure1Animation()
        
        
        
        UIView.animate(withDuration: 1.5) {
            self.figure4.layer.cornerRadius = self.figure4.bounds.height / 2
        } completion: { (true) in
            UIView.animate(withDuration: 1.5) {
                self.figure4.layer.cornerRadius = 0
                
            }
        }
        
        UIView.animate(withDuration: 1.0, delay: 2) {
                    self.figure2.backgroundColor = .red
                    self.figure3.backgroundColor = .blue
                } completion: { (_) in
                    UIView.animate(withDuration: 1.0) {
                        self.figure2.backgroundColor = .yellow
                        self.figure3.backgroundColor = .green
                    } completion: { (_) in
                        UIView.animate(withDuration: 1.0) {
                            self.figure2.backgroundColor = .orange
                            self.figure3.backgroundColor = .purple
                        } completion: { (_) in }
                    }
                }
        
        UIView.animate(withDuration: 1.5) {
            self.figure7.transform = self.figure7.transform.rotated(by: CGFloat.pi)
            self.figure7.transform = .identity
        }
        
    }
    
}

