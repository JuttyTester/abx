//
//  AppDelegate.swift
//  ABX
//
//  Created by Smartbox on 08/11/2018.
//  Copyright © 2018 ABX. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    var appCoordinator: AppCoordinator?
    let appAssembly = AppAssembly()

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
      
        // Register dependency injections
        appAssembly.assemble()
        
        // Start main coordinator
        window = UIWindow(frame: UIScreen.main.bounds)
        appCoordinator = AppCoordinator(window: window)
        appCoordinator?.start()
        
        return true
    }
}

