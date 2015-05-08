//
//  ViewController.swift
//  Secure Personal File Manager
//
//  Created by Jan How on 4/19/15.
//  Copyright (c) 2015 Loh Jan How. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewDidAppear(animated: Bool) {
        
        let isUserloggedIn = NSUserDefaults.standardUserDefaults().boolForKey("isUserLoggedIn");
        
        if(!isUserloggedIn)
        {
            self.performSegueWithIdentifier("loginView", sender: self);
        }
        
    }

    @IBAction func logoutButtonTapped(sender: AnyObject) {
    
        NSUserDefaults.standardUserDefaults().setBool(false, forKey: "isUserLoggedIn");
        NSUserDefaults.standardUserDefaults().synchronize();
        
        PFUser.logOutInBackgroundWithBlock({ (error:NSError?) -> Void in
        
        self.performSegueWithIdentifier("loginView", sender: self);

    })
    }

}



