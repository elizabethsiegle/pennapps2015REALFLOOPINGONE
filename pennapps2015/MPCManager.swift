//
//  MPCManager.swift
//  pennapps2015
//
//  Created by Elizabeth Siegle on 9/5/15.
//  Copyright (c) 2015 Elizabeth Siegle. All rights reserved.
//

//import UIKit
//import MultipeerConnectivity
//
//protocol MPCManagerDelegate {
//    func foundPeer()
//    func lostPeer()
//    func invitationWasReceived(fromPeer: String)
//    func connectedWithPeer(peerID: MCPeerID)
//    
//}
//
//class MPCManager: NSObject, MCSessionDelegate, MCNearbyServiceBrowserDelegate, MCNearbyServiceAdvertiserDelegate
// {
//    var delegate: MPCManagerDelegate?
//    var session: MCSession!
//    
//    var peer: MCPeerID!
//    
//    var browser: MCNearbyServiceBrowser!
//    
//    var advertiser: MCNearbyServiceAdvertiser!
//    //Do any additional setup after loading the view.
//    
//    var foundPeers = [MCPeerID]()
//    
//    var invitationHandler: ((Bool, MCSession!)->Void)!
//    
//    override init() {
//        super.init()
//        
//        peer = MCPeerID(displayName: UIDevice.currentDevice().name)
//        
//        session = MCSession(peer: peer)
//        session.delegate = self
//        
//        browser = MCNearbyServiceBrowser(peer: peer, serviceType: "appcoda-mpc")
//        browser.delegate = self
//        
//        advertiser = MCNearbyServiceAdvertiser(peer: peer, discoveryInfo: nil, serviceType: "appcoda-mpc")
//        advertiser.delegate = self
//    }
//    
//    func browser(browser: MCNearbyServiceBrowser!, foundPeer peerID: MCPeerID!, withDiscoveryInfo info: [NSObject : AnyObject]!) {
//        foundPeers.append(peerID)
//        
//        delegate?.foundPeer()
//    }
//    
//    func browser(browser: MCNearbyServiceBrowser!, lostPeer peerID: MCPeerID!) {
//        for (index, aPeer) in enumerate(foundPeers){
//            if aPeer == peerID {
//                foundPeers.removeAtIndex(index)
//                break
//            }
//        }
//        
//        delegate?.lostPeer()
//    }
//    
//    func browser(browser: MCNearbyServiceBrowser!, didNotStartBrowsingForPeers error: NSError!) {
//        println(error.localizedDescription)
//    }
//    
//}
