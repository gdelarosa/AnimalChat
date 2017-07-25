//
//  loginVC.swift
//  Chat
//
//  Created by Gina De La Rosa on 7/24/17.
//  Copyright © 2017 Gina De La Rosa. All rights reserved.
//

import UIKit

class loginVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBAction func closedPressed(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
    @IBAction func createAccountPressed(_ sender: Any) {
        performSegue(withIdentifier: TO_CREATE_ACCOUNT, sender: nil)
    }
    
}
