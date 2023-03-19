//
//  RatingViewController.swift
//  ProjectRequestFive
//
//  Created by Ana Paula Silva de Sousa on 19/03/23.
//

import UIKit

class RatingViewController: UIViewController {

    @IBOutlet var labelName: UILabel!
    @IBOutlet var labelRating: UILabel!
    @IBOutlet var imageRating: UIImageView!
    
    var ratingPizza: PizzaElement?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        labelName.text = "AVALIAÇÃO CLIENTE"
        labelRating.text = "Para nossos clientes, a pizza \(ratingPizza?.name ?? "") esta na posiçao \(ratingPizza?.rating ?? 0) /5 - de aprovação"
    }

    @IBAction func back(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
    }
    
    @IBAction func follow(_ sender: Any) {
        self.navigationController?.popToRootViewController(animated: true)
    }
}
