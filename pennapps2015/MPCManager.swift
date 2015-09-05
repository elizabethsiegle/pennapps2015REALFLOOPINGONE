//
//  MPCManager.swift
//  pennapps2015
//
//  Created by Elizabeth Siegle on 9/5/15.
//  Copyright (c) 2015 Elizabeth Siegle. All rights reserved.
//

import UIKit
import MultipeerConnectivity

class MPCManager: NSObject {
    var session: MCSession!
    var peer: MCPeerID
    var browser: MCNearbyServiceBrowser!
    var advertiser: MCNearbyServiceAdvertiser!
    
    var foundPeers = [MCPeerID]()
    var invitationHandler: ((Bool, MCSession!)->Void)!
   
}
