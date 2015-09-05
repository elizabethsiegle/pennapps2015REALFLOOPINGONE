//
//  messageViewController.swift
//  pennapps2015
//
//  Created by Elizabeth Siegle on 9/5/15.
//  Copyright (c) 2015 Elizabeth Siegle. All rights reserved.
//

//import UIKit
//import MultipeerConnectivity
//
//class messageViewController: UIViewController  {
//    var isAdvertising: Bool!
//
//    func advertiser(advertiser: MCNearbyServiceAdvertiser!, didReceiveInvitationFromPeer peerID: MCPeerID!, withContext context: NSData!, invitationHandler: ((Bool, MCSession!) -> Void)!) {
//        self.invitationHandler = invitationHandler
//        
//        delegate?.invitationWasReceived(peerID.displayName)
//    }
//    override func viewDidLoad() {
//        appDelegate.mpcManager.advertiser.startAdvertisingPeer()
//        
//        isAdvertising = true    
//    }
//    @IBAction func startStopAdvertising(sender: AnyObject) {
//        let actionSheet = UIAlertController(title: "", message: "Change Visibility", preferredStyle: UIAlertControllerStyle.ActionSheet)
//        
//        var actionTitle: String
//        if isAdvertising == true {
//            actionTitle = "Make me invisible to others"
//        }
//        else{
//            actionTitle = "Make me visible to others"
//        }
//        
//        let visibilityAction: UIAlertAction = UIAlertAction(title: actionTitle, style: UIAlertActionStyle.Default) { (alertAction) -> Void in
//            if self.isAdvertising == true {
//                self.appDelegate.mpcManager.advertiser.stopAdvertisingPeer()
//            }
//            else{
//                self.appDelegate.mpcManager.advertiser.startAdvertisingPeer()
//            }
//            
//            self.isAdvertising = !self.isAdvertising
//        }
//        
//        let cancelAction = UIAlertAction(title: "Cancel", style: UIAlertActionStyle.Cancel) { (alertAction) -> Void in
//            
//        }
//        
//        actionSheet.addAction(visibilityAction)
//        actionSheet.addAction(cancelAction)
//        
//        self.presentViewController(actionSheet, animated: true, completion: nil)
//    }
//    
//    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
//        let selectedPeer = appDelegate.mpcManager.foundPeers[indexPath.row] as MCPeerID
//        
//        appDelegate.mpcManager.browser.invitePeer(selectedPeer, toSession: appDelegate.mpcManager.session, withContext: nil, timeout: 20)
//    }
//    override func didReceiveMemoryWarning() {
//        super.didReceiveMemoryWarning()
//        // Dispose of any resources that can be recreated.
//    }
//
//
//    /*
//     MARK: - Navigation
//
//     In a storyboard-based application, you will often want to do a little preparation before navigation
//    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
//         Get the new view controller using segue.destinationViewController.
//         Pass the selected object to the new view controller.
//    }
//    */
//
//}
