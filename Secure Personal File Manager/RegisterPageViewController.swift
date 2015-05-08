//
//  RegisterPageViewController.swift
//  Secure Personal File Manager
//
//  Created by Jan How on 4/19/15.
//  Copyright (c) 2015 Loh Jan How. All rights reserved.
//

import UIKit

class RegisterPageViewController: UIViewController {

    @IBOutlet weak var userEmailTextField: UITextField!
    @IBOutlet weak var userPasswordTextField: UITextField!
    @IBOutlet weak var repeatPasswordTextField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func registerButtonTapped(sender: AnyObject) {
        
        let userEmail = userEmailTextField.text;
        let userPassword = userPasswordTextField.text;
        let userRepeatPassword = repeatPasswordTextField.text;
        
        // Check for empty fields
        if(userEmail.isEmpty || userPassword.isEmpty || userRepeatPassword.isEmpty)
        
        {
            
            // Display alert message
            
            displayMyAlertMessage("All fields are required")
            
            return;
        
        }
        
        // Check if password match
        if(userPassword != userRepeatPassword)
        {
            
            // Display alert message
            
            displayMyAlertMessage("Password do not match")
            
            return;
        }
        
        
        
        // Store data
        let myUser:PFUser = PFUser();
        
        myUser.username = userEmail
        myUser.password = userPassword
        myUser.email = userEmail
        
        myUser.signUpInBackgroundWithBlock { (success:Bool, error:NSError?) -> Void in
            
            println("User successfully registered")
            
            // Display alert message with confirmation.
            var myAlert = UIAlertController(title: "Alert", message:"Registration is successful. Thank you!", preferredStyle: UIAlertControllerStyle.Alert);
            
            let okAction = UIAlertAction(title: "Ok", style: UIAlertActionStyle.Default){ action in
                self.dismissViewControllerAnimated(true, completion:nil);
            }
            
            myAlert.addAction(okAction);
            self.presentViewController(myAlert, animated: true, completion: nil);
            

            
        }
        
        
    }
    
    func displayMyAlertMessage(userMessage:String)
    {
        
        var myAlert = UIAlertController(title: "Alert", message: userMessage, preferredStyle: UIAlertControllerStyle.Alert);
        
        let okAction = UIAlertAction(title: "Ok", style: UIAlertActionStyle.Default, handler:nil);
        
        myAlert.addAction(okAction);
        
        self.presentViewController(myAlert, animated:true, completion:nil);
    

    }

    @IBAction func haveAccountButtonTapped(sender: AnyObject) {
        self.dismissViewControllerAnimated(true, completion:nil)
    }
  
}
