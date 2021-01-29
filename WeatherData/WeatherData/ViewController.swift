//
//  ViewController.swift
//  WeatherData
//
//  Created by Ангелина Косенко on 24.01.2021.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    
    var apiKey = "ecd538b598e2debe3ff483da909e72e9"

    var city = "Kyiv"
    var cityDnipro = "Dnipro"

    lazy var url = URL(string: "https://api.openweathermap.org/data/2.5/onecall?lat=\(49)&lon=\(44)&appid=\(apiKey)&units=metric")! 

    lazy var request = URLRequest(url: url)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print(url)
        parseJSON(url: url)
    }
    
    func parseJSON(url: URL) {
        if let url = URL(string: "https://api.myjson.com/bins/yfua8") {
           URLSession.shared.dataTask(with: url) { data, response, error in
              if let data = data {
                  do {
                     let res = try JSONDecoder().decode(Result.self, from: data)
                     print(res)
                  } catch let error {
                     print(error)
                  }
               }
           }.resume()
        }
    }
    
    

}



