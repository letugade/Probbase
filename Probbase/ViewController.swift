//
//  ViewController.swift
//  Probbase
//
//  Created by Lance Tugade on 10/9/17.
//  Copyright © 2017 Lance Tugade. All rights reserved.
//

import UIKit
import Firebase
import SVProgressHUD

class ViewController: UIViewController {

    @IBAction func btnLoginPushed(_ sender: Any) {
        performSegue(withIdentifier: "login", sender: self)
    }
    @IBAction func btnRegisterPushed(_ sender: Any) {
        performSegue(withIdentifier: "register", sender: self)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}

