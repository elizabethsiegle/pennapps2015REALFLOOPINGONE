//
//  messageViewController.swift
//  pennapps2015
//
//  Created by Elizabeth Siegle on 9/5/15.
//  Copyright (c) 2015 Elizabeth Siegle. All rights reserved.
//

import UIKit

class messageViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    @IBOutlet weak var messageTableView: UITableView!

     var messagesArray:[String] = ["Message 1", "Message 2", "Message 3"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(tableView:UITableView!, numberOfRowsInSection section:Int) -> Int
    {
        return 20
    }
    
    func tableView(tableView: UITableView!, cellForRowAtIndexPath indexPath: NSIndexPath!) -> UITableViewCell!
    {
        let cell:UITableViewCell=UITableViewCell(style: UITableViewCellStyle.Subtitle, reuseIdentifier: "mycell")
        cell.textLabel!.text="row#\(indexPath.row)"
        cell.detailTextLabel!.text="subtitle#\(indexPath.row)"
        
        return cell
    }
}


//    override func viewDidLoad() {
//        super.viewDidLoad()
//        self.messagesArray.append("Message 4")
//        
//        self.messageTableView.delegate = self
//        self.messageTableView.dataSource = self
//        
//        
//    }
//    
//    override func didReceiveMemoryWarning() {
//        super.didReceiveMemoryWarning()
//    }
//    
//    func tableView(tableView:UITableView, cellforRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
//        let cell = self.messageTableView.dequeueReusableCellWithIdentifier("MessageCell") as! UITableViewCell
//       
//        cell.textLabel?.text = self.messagesArray[indexPath.row]
//        
//        return cell
//        
//    }
//    
//    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//        return messagesArray.count
//    }
//}