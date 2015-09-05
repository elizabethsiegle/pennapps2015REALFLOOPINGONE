//
//  SignuppageViewController.swift
//  pennapps2015
//
//  Created by Elizabeth Siegle on 9/4/15.
//  Copyright (c) 2015 Elizabeth Siegle. All rights reserved.
//

import UIKit

class SignuppageViewController: UIViewController,UIPickerViewDelegate, UIPickerViewDataSource {

    @IBOutlet weak var usernametext: UITextField!
    
    @IBOutlet weak var passwordtext: UITextField!
    
    @IBOutlet weak var confirmpassword: UITextField!
    
    @IBOutlet weak var citytext: UITextField!
    
    @IBOutlet weak var majortext: UITextField!
    
    @IBOutlet weak var intereststext: UITextField!
    
    @IBAction func signupclicked(sender: AnyObject) {
        self.dismissViewControllerAnimated(true, completion:nil)
        var username:NSString = usernametext.text as NSString
        var password:NSString = passwordtext.text as NSString
        var confirm_password:NSString = confirmpassword.text as NSString
        
        if ( username.isEqualToString("") || password.isEqualToString("") ) {
            
            var alertView:UIAlertView = UIAlertView()
            alertView.title = "Sign Up Failed!"
            alertView.message = "Please enter Username and Password"
            alertView.delegate = self
            alertView.addButtonWithTitle("OK")
            alertView.show()
        } else if ( !password.isEqual(confirm_password) ) {
            
            var alertView:UIAlertView = UIAlertView()
            alertView.title = "Sign Up Failed!"
            alertView.message = "Passwords doesn't Match"
            alertView.delegate = self
            alertView.addButtonWithTitle("OK")
            alertView.show()
        } else {
            
            var post:NSString = "username=\(username)&password=\(password)&c_password=\(confirm_password)"
            
            NSLog("PostData: %@",post);
            
            var url:NSURL = NSURL(string: "https://dipinkrishna.com/jsonsignup.php")!
            
            var postData:NSData = post.dataUsingEncoding(NSASCIIStringEncoding)!
            
            var postLength:NSString = String( postData.length )
            
            var request:NSMutableURLRequest = NSMutableURLRequest(URL: url)
            request.HTTPMethod = "POST"
            request.HTTPBody = postData
            request.setValue("as string", forHTTPHeaderField: "Content-Length")
            request.setValue("application/x-www-form-urlencoded", forHTTPHeaderField: "Content-Type")
            request.setValue("application/json", forHTTPHeaderField: "Accept")
            
            
            var reponseError: NSError?
            var response: NSURLResponse?
            
            var urlData: NSData? = NSURLConnection.sendSynchronousRequest(request, returningResponse:&response, error:&reponseError)
            
            if ( urlData != nil ) {
                let res = response as! NSHTTPURLResponse!;
                
                NSLog("Response code: %ld", res.statusCode);
                
                if (res.statusCode >= 200 && res.statusCode < 300)
                {
                    var responseData:NSString  = NSString(data:urlData!, encoding:NSUTF8StringEncoding)!
                    
                    NSLog("Response ==> %@", responseData);
                    
                    var error: NSError?
                    
                    let jsonData:NSDictionary = NSJSONSerialization.JSONObjectWithData(urlData!, options:NSJSONReadingOptions.MutableContainers , error: &error) as! NSDictionary
                    
                    
                    let success:NSInteger = jsonData.valueForKey("success") as! NSInteger
                    
                    //[jsonData[@"success"] integerValue];
                    
                    NSLog("Success: %ld", success);
                    
                    if(success == 1)
                    {
                        NSLog("Sign Up SUCCESS");
                        self.dismissViewControllerAnimated(true, completion: nil)
                    } else {
                        var error_msg:NSString
                        
                        if jsonData["error_message"] as? NSString != nil {
                            error_msg = jsonData["error_message"] as! NSString
                        } else {
                            error_msg = "Unknown Error"
                        }
                        var alertView:UIAlertView = UIAlertView()
                        alertView.title = "Sign Up Failed!"
                        alertView.message = error_msg as String
                        alertView.delegate = self
                        alertView.addButtonWithTitle("OK")
                        alertView.show()
                        
                    }
                    
                } else {
                    var alertView:UIAlertView = UIAlertView()
                    alertView.title = "Sign Up Failed!"
                    alertView.message = "Connection Failed"
                    alertView.delegate = self
                    alertView.addButtonWithTitle("OK")
                    alertView.show()
                }
            }  else {
                var alertView:UIAlertView = UIAlertView()
                alertView.title = "Sign in Failed!"
                alertView.message = "Connection Failure"
                if let error = reponseError {
                    alertView.message = (error.localizedDescription)
                }
                alertView.delegate = self
                alertView.addButtonWithTitle("OK")
                alertView.show()
            }
        }
        
    }
    
//    @IBAction func alreadyhaveaccountclicked(sender: UIButton) {
//    }

    @IBOutlet weak var cityPicker: UIPickerView! //= UIPickerView()
    let cityPickerValues = ["San Francisco", "Seattle", "San Antonio", "New York", "Ann Arbor"]
    
    
    @IBOutlet weak var majorPicker: UIPickerView!
    let majorPickerValues = ["Computer Science", "Biology", "Math", "History", "English"]
   
       override func viewDidLoad() {
        super.viewDidLoad()
//        cityPicker.hidden = true;
//        citytext.text = cityPickerValues[0]
        //self.cityPicker.delegate = self;
        cityPicker.dataSource = self
        cityPicker.delegate = self
    }
    
    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
        return 5
    }
    
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return cityPickerValues.count
    }
    
    //MARK: Delegates
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String! {
        return cityPickerValues[row]
        
    }
    
    func pickerView(pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        citytext.text = cityPickerValues[row]
        cityPicker.hidden = true
    }
    
    func textFieldShouldBeginEditing(textField: UITextField) -> Bool {
        cityPicker.hidden = false
        return false
    }
    
    func pickerView(pickerView: UIPickerView, attributedTitleForRow row: Int, forComponent component: Int) -> NSAttributedString? {
        let titleData = cityPickerValues[row]
        var myTitle = NSAttributedString(string: titleData, attributes: [NSFontAttributeName:UIFont(name: "Georgia", size: 11.0)!,NSForegroundColorAttributeName:UIColor.blueColor()])
        return myTitle
    }
    
    
    //size the components of the UIPickerView
    func pickerView(pickerView: UIPickerView, rowHeightForComponent component: Int) -> CGFloat {
        return 30.0
    }
    
    func pickerView(pickerView: UIPickerView, widthForComponent component: Int) -> CGFloat {
        return 200
    }
    


//        self.cityPicker.delegate = self;
//        self.cityPicker.dataSource = self;
//        self.majorPicker.delegate = self;
//        self.majorPicker.dataSource = self;
//
//    }
//        func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
//            return 1
//        }
//        
//        func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
//            return cityPickerValues.count
//        }
//        
//        func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String! {
//            return cityPickerValues[row]
//           }
//    
//    func pickerView(pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int)
//    {
//        citytext.text = cityPickerValues[row]
//        cityPicker.hidden = true;
//    }
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        self.navigationController?.toolbarHidden = false
    }
    
    func updateTextField(sender: UITextField) {
        cityPicker.hidden = false
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true;
    }
    
    @IBAction func userTappedBackground(sender: AnyObject) {
        usernametext.resignFirstResponder()
        passwordtext.resignFirstResponder()
        confirmpassword.resignFirstResponder()
        citytext.resignFirstResponder()
        majortext.resignFirstResponder()
        intereststext.resignFirstResponder()
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
