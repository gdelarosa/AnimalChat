//
//  ChatVC.swift
//  Chat
//
//  Created by Gina De La Rosa on 7/24/17.
//  Copyright © 2017 Gina De La Rosa. All rights reserved.
//

import UIKit

class ChatVC: UIViewController {
    
    @IBOutlet var menuButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        menuButton.addTarget(self.revealViewController(), action: #selector(SWRevealViewController.revealToggle(_:)), for: .touchUpInside)
        self.view.addGestureRecognizer(self.revealViewController().panGestureRecognizer())
        self.view.addGestureRecognizer(self.revealViewController().tapGestureRecognizer())
    }
    

}
