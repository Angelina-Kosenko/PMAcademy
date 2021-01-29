//
//  ViewController.swift
//  ProjectUniverse
//
//  Created by Ангелина Косенко on 24.01.2021.
//

import UIKit

class ViewController: UIViewController {
    
    var spaceBodies = [["Universe", "Galaxy", "Planetary star system"], ["Stars", "Planets", "Satellites"]]
    
    @IBOutlet weak var tableUniverse: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

extension ViewController: UITableViewDelegate {
    
}

extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        .init()
    }
    
    
    func numberOfSections(in tableView: UITableView) -> Int { spaceBodies.count }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        spaceBodies[section].count
    }
}

