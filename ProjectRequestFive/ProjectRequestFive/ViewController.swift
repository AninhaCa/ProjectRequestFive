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
        setupTableView()
    }
    
    func setupTableView() {
        tableView.dataSource = self
        tableView.delegate = self
        tableView.register(UINib(nibName: "CustomXIBCell", bundle: nil), forCellReuseIdentifier: "cellXIB")
        requestPizza()
    }
    
    func requestPizza() {
        AF.request("https://p3teufi0k9.execute-api.us-east-1.amazonaws.com/v1/pizza", method: .get).response { response in
            let pizza = try? JSONDecoder().decode(Pizza.self, from: response.data ?? Data())
            self.arrayPizza = pizza
            self.tableView.reloadData()
        }
    }
}

extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrayPizza?.count ?? 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: "cellXIB", for: indexPath) as? CustomXIBCell {
            cell.setupXIB(pizzaElement: arrayPizza?[indexPath.row])
            
            return cell
        }
        
        return UITableViewCell()
    }
}

extension ViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if let price = self.storyboard?.instantiateViewController(identifier: "price") as? PriceViewController {
            price.pricePizza = self.arrayPizza?[indexPath.row]
            self.navigationController?.pushViewController(price, animated: true)
        }
    }
}
