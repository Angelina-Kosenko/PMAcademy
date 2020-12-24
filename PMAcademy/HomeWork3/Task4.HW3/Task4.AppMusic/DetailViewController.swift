//
//  DetailViewController.swift
//  Task4.AppMusic
//
//  Created by Ангелина Косенко on 19.12.2020.
//

import UIKit

class DetailViewController: UIViewController {
    
    private var alertView: AlertView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    
    func setAlert() {
        alertView = AlertView.loadFromNib()
        view.addSubview(alertView)
        alertView.center = view.center
    }
    @objc func okBtn() {
        alertView.removeFromSuperview()
    }
    
    @IBAction func showAlertBtn(_ sender: UIButton) {
        setAlert()
    }
}
    
    
