//
//  ViewController.swift
//  pennapps2015
//
//  Created by Elizabeth Siegle on 9/4/15.
//  Copyright (c) 2015 Elizabeth Siegle. All rights reserved.
//

import UIKit

//class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource, MPCManagerDelegate
// {
//    func foundPeer() {
//        tblPeers.reloadData()
//    }
//    
//    func lostPeer() {
//        tblPeers.reloadData()
//    }
//    
//    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//        return appDelegate.mpcManager.foundPeers.count
//    }
//    
//    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
//        var cell = tableView.dequeueReusableCellWithIdentifier("idCellPeer") as! UITableViewCell
//        
//        cell.textLabel?.text = appDelegate.mpcManager.foundPeers[indexPath.row].displayName
//        
//        return cell
//    }
//    
//    func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
//        return 60.0
//    }
//    
//    let appDelegate = UIApplication.sharedApplication().delegate as! AppDelegate
//
//    @IBOutlet weak var usernamelogintext: UITextField!
//    
//    
//    @IBOutlet weak var passwordlogintext: UITextField!
//    
//    
//    override func viewDidLoad() {
//        super.viewDidLoad()
//        appDelegate.MPCManager.delegate = self
//        appDelegate.mpcManager.browser.startBrowsingForPeers()
//        
//        
//        // Do any additional setup after loading the view, typically from a nib.
//    }
//    
//
//
//    @IBOutlet weak var txtusername: UITextField!
//    
//    @IBOutlet weak var txtpassword: UITextField!
//    @IBAction func signinclicked(sender: AnyObject) {
//        
//    }
//    
//    @IBAction func signupclicked(sender: UIButton) {
//        self.dismissViewControllerAnimated(true, completion:nil)
//        var username:NSString = usernamelogintext.text as NSString
//        var password:NSString = passwordlogintext.text as NSString
//        
//        if ( username.isEqualToString("") || password.isEqualToString("") ) {
//            
//            var alertView:UIAlertView = UIAlertView()
//            alertView.title = "Log in Failed!"
//            alertView.message = "Please enter Username and Password"
//            alertView.delegate = self
//            alertView.addButtonWithTitle("OK")
//            alertView.show()
//        }
//    func didReceiveMemoryWarning() {
//        super.didReceiveMemoryWarning()
//        // Dispose of any resources that can be recreated.
//    }
//
//}

//}