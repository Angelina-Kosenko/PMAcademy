//
//  ViewController.swift
//  Task4.AppMusic
//
//  Created by Ангелина Косенко on 19.12.2020.
//

import UIKit

class MainViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    @IBAction func movetonextscreen(_ sender: UIButton) {
        let storyBoard = UIStoryboard(name: "Main", bundle:nil)
                let vc = storyBoard.instantiateViewController(withIdentifier: "DetailViewController") as! DetailViewController
                self.navigationController?.pushViewController(vc, animated:true)
    }
    
    

}

