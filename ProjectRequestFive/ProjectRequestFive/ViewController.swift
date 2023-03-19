//
//  ViewController.swift
//  ProjectRequestFive
//
//  Created by Ana Paula Silva de Sousa on 19/03/23.
//

import UIKit
import Alamofire

class ViewController: UIViewController {
    
    @IBOutlet var tableView: UITableView!
    
    var arrayPizza: Pizza?
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    func setupTableView() {
        requestPizza()
    }
    
    func requestPizza() {
        AF.request("https://p3teufi0k9.execute-api.us-east-1.amazonaws.com/v1/pizza", method: .get).response { response in
            let pizza = try? JSONDecoder().decode(Pizza.self, from: response.data ?? Data())
            self.arrayPizza = pizza
        }
    }
}
