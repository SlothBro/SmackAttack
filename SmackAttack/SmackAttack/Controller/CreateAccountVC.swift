//
//  CreateAccountVC.swift
//  SmackAttack
//
//  Created by Andrew Ramirez on 5/24/18.
//  Copyright © 2018 Andrew Ramirez. All rights reserved.
//

import UIKit

class CreateAccountVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func closePressed(_ sender: Any) {
        performSegue(withIdentifier: UNWIND, sender: nil)
    }
    

}
