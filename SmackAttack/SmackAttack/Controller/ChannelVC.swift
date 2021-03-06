//
//  ChannelVC.swift
//  SmackAttack
//
//  Created by Andrew Ramirez on 5/24/18.
//  Copyright © 2018 Andrew Ramirez. All rights reserved.
//

import UIKit

class ChannelVC: UIViewController {

   
    @IBOutlet weak var loginBtn: UIButton!
    @IBAction func prepareforUnwind(segue: UIStoryboardSegue){}
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.revealViewController().rearViewRevealWidth = self.view.frame.size.width - 60

        // Do any additional setup after loading the view.
    }
    
    @IBAction func loginBtnPressed(_ sender: Any) {
        performSegue(withIdentifier: TO_LOGIN, sender: nil)
    }

}
