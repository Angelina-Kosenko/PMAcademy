//
//  ViewController.swift
//  Task3.HW3
//
//  Created by Ангелина Косенко on 20.12.2020.
//

import UIKit

class CircusViewController: UIViewController {

    let circleView: UIView = {
        let view = UIView(frame: .zero)
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = #colorLiteral(red: 1, green: 0.07634785026, blue: 0.1080838814, alpha: 1)
        view.isUserInteractionEnabled = true
        view.layer.cornerRadius = 20
        return view
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        view.addSubview(circleView)
        NSLayoutConstraint.activate([
            circleView.heightAnchor.constraint(equalToConstant: 40),
            circleView.widthAnchor.constraint(equalToConstant: 40),
            circleView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            circleView.centerYAnchor.constraint(equalTo: view.centerYAnchor)
        ])
        
        let swipeRightGesture = UISwipeGestureRecognizer(target: self, action: #selector(swipeRightAction))
        swipeRightGesture.direction = .right
        circleView.addGestureRecognizer(swipeRightGesture)
        
        let swipeLeftGesture = UISwipeGestureRecognizer(target: self, action: #selector(swipeLeftAction))
        swipeLeftGesture.direction = .left
        circleView.addGestureRecognizer(swipeLeftGesture)
        
        let swipeDownGesture = UISwipeGestureRecognizer(target: self, action: #selector(swipeDownAction))
        swipeDownGesture.direction = .down
        circleView.addGestureRecognizer(swipeDownGesture)
        
        let swipeUpGesture = UISwipeGestureRecognizer(target: self, action: #selector(swipeUpAction))
        swipeUpGesture.direction = .up
        circleView.addGestureRecognizer(swipeUpGesture)
        
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(tapAction))
        view.addGestureRecognizer(tapGesture)
        
        let doubleTapGesture = UITapGestureRecognizer(target: self, action: #selector(doubleTapAction))
        doubleTapGesture.numberOfTapsRequired = 2
        view.addGestureRecognizer(doubleTapGesture)
    }
    var colors: [UIColor] = [.yellow, .orange, .red, .blue, .green, .systemIndigo]
    
    
    
    @objc func swipeRightAction(){
        UIView.animate(withDuration: 1.5) {
            self.circleView.center.x = self.circleView.center.x + 30
            self.circleView.backgroundColor = self.colors.randomElement()
        }
    }
    @objc func swipeLeftAction(){
        UIView.animate(withDuration: 1.5) {
            self.circleView.center.x = self.circleView.center.x - 30
            self.circleView.backgroundColor = self.colors.randomElement()
        }
    }
    @objc func swipeDownAction(){
        UIView.animate(withDuration: 1.5) {
            self.circleView.center.y = self.circleView.center.y + 30
            self.circleView.backgroundColor = self.colors.randomElement()
        }
    }
    @objc func swipeUpAction(){
        UIView.animate(withDuration: 1.5) {
            self.circleView.center.y = self.circleView.center.y - 30
            self.circleView.backgroundColor = self.colors.randomElement()
        }
    }
    @objc func tapAction(){
        UIView.animate(withDuration: 1.5) {
            self.circleView.center = self.view.center
        }
    }
    @objc func doubleTapAction(){
        UIView.animate(withDuration: 1.5) {
            self.circleView.center = self.view.center
        } completion: { (_) in
            UIView.animate(withDuration: 1.5) {
                let circlePath = UIBezierPath(arcCenter: self.view.center, radius: 80, startAngle: 0, endAngle: .pi * 2, clockwise: false)
                let animation = CAKeyframeAnimation(keyPath: #keyPath(CALayer.position))
                animation.duration = 3
                animation.repeatCount = 1
                animation.path = circlePath.cgPath
                self.circleView.layer.add(animation, forKey: nil)
            }
        }
    }
}


