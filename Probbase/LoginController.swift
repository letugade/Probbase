//
//  LoginController.swift
//  Probbase
//
//  Created by Lance Tugade on 10/19/17.
//  Copyright © 2017 Lance Tugade. All rights reserved.
//

import UIKit
import Firebase
import FirebaseAuth
import SVProgressHUD

class LoginController: UIViewController {
    
    @IBOutlet weak var txtUsername: UITextField!
    @IBOutlet weak var txtPassword: UITextField!
    @IBOutlet weak var btnLogin: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func btnLoginPushed(_ sender: Any) {
        SVProgressHUD.show()
        // Login
        Auth.auth().signIn(withEmail: txtUsername.text!, password: txtPassword.text!, completion: { (user, error) in
            if error != nil {
                print(error!)
            }
            else {
                print("Login Successful")
                SVProgressHUD.dismiss()
            }
        })
    }
    
}
