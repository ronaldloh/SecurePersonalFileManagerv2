//
//  PasswordRecoverViewController.swift
//  Secure Personal File Manager
//
//  Created by Jan How on 5/1/15.
//  Copyright (c) 2015 Loh Jan How. All rights reserved.
//

import UIKit

class PasswordRecoverViewController: UIViewController {

    @IBOutlet weak var userEmailTextField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func recoverButtonTapped(sender: AnyObject) {
        
        let userEmail = userEmailTextField.text
        
        PFUser.requestPasswordResetForEmailInBackground(userEmail) {
            (success:Bool, error:NSError?) -> Void in
        
            if(success)
            {
                let successMessage = "Email message was sent to you \(userEmail)"
                self.displayMessage(successMessage)
                return
            }
            
            if(error != nil)
            {
                let errorMessage:String = error!.userInfo!["error"] as! String
                self.displayMessage(errorMessage)
            }
    
        }
        
    }
    
    func displayMessage(theMessage:String)
    {
        
        // Display alert message with confirmation
        var myAlert = UIAlertController(title:"Alert", message:theMessage, preferredStyle: UIAlertControllerStyle.Alert);
        
        let okAction = UIAlertAction(title:"Ok", style:UIAlertActionStyle.Default){
            action in
            self.dismissViewControllerAnimated(true, completion:nil);
        }
        
        myAlert.addAction(okAction);
        self.presentViewController(myAlert, animated:true, completion:nil);
    }
    
    
    

    @IBAction func cancelButtonTapped(sender: AnyObject) {
        
        self.dismissViewControllerAnimated(true, completion:nil)
    }
    

}
