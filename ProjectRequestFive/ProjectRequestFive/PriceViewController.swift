//
//  PriceViewController.swift
//  ProjectRequestFive
//
//  Created by Ana Paula Silva de Sousa on 19/03/23.
//

import UIKit

class PriceViewController: UIViewController {

    @IBOutlet var imagePrice: UIImageView!
    @IBOutlet var labelPriceP: UILabel!
    @IBOutlet var labelPriceM: UILabel!
    @IBOutlet var labelPriceG: UILabel!
    @IBOutlet var follow: UIButton!
    
    var pricePizza: PizzaElement?
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
   
    @IBAction func back(_ sender: Any) {
    }
    
    @IBAction func follow(_ sender: Any) {
    }
}
