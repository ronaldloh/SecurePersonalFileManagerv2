//
//  LoginViewController.swift
//  Secure Personal File Manager
//
//  Created by Jan How on 4/19/15.
//  Copyright (c) 2015 Loh Jan How. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {

    @IBOutlet weak var userEmailTextField: UITextField!
    @IBOutlet weak var userPasswordTextField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    @IBAction func loginButtonTapped(sender: AnyObject) {
        
        let userEmail = userEmailTextField.text;
        let userPassword = userPasswordTextField.text;
        
        PFUser.logInWithUsernameInBackground(userEmail, password: userPassword) {
            (user: PFUser?, error: NSError?) -> Void in
            if user != nil
            {
                
                // Login is successfull
                
                NSUserDefaults.standardUserDefaults().setBool(true, forKey: "isUserLoggedIn");
                NSUserDefaults.standardUserDefaults().synchronize();
                
                self.dismissViewControllerAnimated(true, completion:nil);
            }else {
                println("Could not find user")
            }
        }
    }

}

