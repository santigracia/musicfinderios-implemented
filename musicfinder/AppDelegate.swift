//
//  AppDelegate.swift
//  musicfinder
//
//  Created by Santi Gracia on 9/3/19.
//  Copyright © 2019 Mixpanel. All rights reserved.
//

import UIKit
import Mixpanel

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
    
       Mixpanel.initialize(token: "d1a82dc38adb1e0452f848867b67f9d2") //use your music finder project token
       
       //Mixpanel.mainInstance().identify(distinctId: "testuser3")

       Mixpanel.mainInstance().useIPAddressForGeoLocation = true
        
        
//       Mixpanel.mainInstance().loggingEnabled = true
//       Mixpanel.mainInstance().track(event: "App Started")
        
        return true
    }


}


