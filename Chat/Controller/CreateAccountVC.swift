//
//  CreateAccountVC.swift
//  Chat
//
//  Created by Gina De La Rosa on 7/24/17.
//  Copyright © 2017 Gina De La Rosa. All rights reserved.
//

import UIKit

class CreateAccountVC: UIViewController {

    @IBOutlet var user: UITextField!
    @IBOutlet var email: UITextField!
    @IBOutlet var password: UITextField!
    @IBOutlet var userImage: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    

    @IBAction func closedPressed(_ sender: Any) {
        performSegue(withIdentifier: UNWIND, sender: nil)
    }
    
    @IBAction func createAccount(_ sender: Any) {
        guard let emailText = email.text, email.text != "" else {
            return
        }
        guard let passText = password.text , password.text != "" else {
            return
        }
        AuthService.instance.registerUser(email: emailText, password: passText) { (success) in
            if success {
                print("registered user")
            }
        }
    }
    
    @IBAction func pickAvatar(_ sender: Any) {
        
        
    }
    
    @IBAction func backgroundColor(_ sender: Any) {
        
        
    }
    
    
    
    
}
