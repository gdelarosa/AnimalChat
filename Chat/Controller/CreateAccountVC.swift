//
//  CreateAccountVC.swift
//  Chat
//
//  Created by Gina De La Rosa on 7/24/17.
//  Copyright © 2017 Gina De La Rosa. All rights reserved.
//

import UIKit

class CreateAccountVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    

    @IBAction func closedPressed(_ sender: Any) {
        performSegue(withIdentifier: UNWIND, sender: nil)
    }
}
