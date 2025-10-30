//
//  AppDelegate.swift
//  musicfinder
//
//  Created by Santi Gracia on 9/3/19.
//  Copyright © 2019 Mixpanel. All rights reserved.
//

import UIKit
import Mixpanel
import MixpanelSessionReplay


@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        
        Mixpanel.initialize(token: "5ea23af71cccdd315b0ca3159750383b", trackAutomaticEvents: true)  //use your test project token
        Mixpanel.mainInstance().loggingEnabled = true
        
        let config = MPSessionReplayConfig(wifiOnly: false, autoMaskedViews: [], enableLogging: true)
                MPSessionReplay.initialize(
                        token: Mixpanel.mainInstance().apiToken,
                        distinctId: Mixpanel.mainInstance().distinctId,
                        config: config
        )
        
        return true
    }


}


