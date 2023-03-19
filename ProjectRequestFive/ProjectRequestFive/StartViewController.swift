//
//  StartViewController.swift
//  ProjectRequestFive
//
//  Created by Ana Paula Silva de Sousa on 19/03/23.
//

import UIKit

class StartViewController: UIViewController {

    @IBOutlet var labelStart: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        labelStart.text = "PIZZARIA"
    }
    
    @IBAction func start(_ sender: Any) {
        if let navigation = self.storyboard?.instantiateViewController(identifier: "navi") {
            self.present(navigation, animated: true)
        }
    }
}
