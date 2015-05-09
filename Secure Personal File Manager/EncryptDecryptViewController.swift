//
//  EncryptDecryptViewController.swift
//  Secure Personal File Manager
//
//  Created by Jan How on 5/8/15.
//  Copyright (c) 2015 Loh Jan How. All rights reserved.
//

import UIKit

class EncryptDecryptViewController: UIViewController {

    
    var image : UIImage = UIImage(named:"imageNameHere")!
    var imageData = UIImagePNGRepresentation(image);
    
    var url:NSURL = NSURL(string : "urlHere")!
    var imageData:NSData = NSData.dataWithContentsOfURL(url, options: nil, error: nil)
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
    
    
    @IBAction func EncryptButtonTapped(sender: AnyObject) {
        
        let base64String = imageData.base64EncodedStringWithOptions(.allZeros)
        println(base64String)
    
    }
        
    
    

    
    @IBAction func DecryptButtonTapped(sender: AnyObject) {
        
        let decodedData = NSData(base64EncodedString: base64String, options: NSDataBase64DecodingOptions.fromRaw(0)!)
        var decodedimage = UIImage(data: decodedData)
        println(decodedimage)
        yourImageView.image = decodedimage as UIImage
        
    }
    
    
    
    
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
