//
//  ViewController.swift
//  pennapps2015
//
//  Created by Elizabeth Siegle on 9/4/15.
//  Copyright (c) 2015 Elizabeth Siegle. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var usernamelogintext: UITextField!
    
    
    @IBOutlet weak var passwordlogintext: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view, typically from a nib.
    }
    


    @IBOutlet weak var txtusername: UITextField!
    
    @IBOutlet weak var txtpassword: UITextField!
    @IBAction func signinclicked(sender: AnyObject) {
        
    }
    
    @IBAction func signupclicked(sender: UIButton) {
        self.dismissViewControllerAnimated(true, completion:nil)
        var username:NSString = usernamelogintext.text as NSString
        var password:NSString = passwordlogintext.text as NSString
        
        if ( username.isEqualToString("") || password.isEqualToString("") ) {
            
            var alertView:UIAlertView = UIAlertView()
            alertView.title = "Log in Failed!"
            alertView.message = "Please enter Username and Password"
            alertView.delegate = self
            alertView.addButtonWithTitle("OK")
            alertView.show()
        } else if {
            
        }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func loginbuttonpushed(sender: UIButton) {
    }
}


