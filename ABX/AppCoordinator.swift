//
//  AppCoordinator.swift
//  ABX
//
//  Created by Smartbox on 08/11/2018.
//  Copyright © 2018 ABX. All rights reserved.
//

import Foundation
import UIKit

class AppCoordinator: Coordinator {
    
    let window: UIWindow
    
    lazy var rootViewController: UITabBarController = {
        return UITabBarController()
    }()
    
    lazy var transactionsNavigationController: UINavigationController = {
        return UINavigationController()
    }()
    
    lazy var transactionsCoordinator: TransactionsCoordinator = {
        return TransactionsCoordinator(navigationController: transactionsNavigationController)
    }()
    
    // MARK: - Coordinator
    init?(window: UIWindow?) {
        guard let window = window else {
            return nil
        }
        self.window = window
    }
    
    override func start() {
        // Configure UITabbarController
        rootViewController.setViewControllers([
            transactionsNavigationController
        ], animated: false)
        
        // Init child coordinators
        addChildCoordinator(coordinator: transactionsCoordinator)
        
        // Show UITabbarController in window
        window.rootViewController = rootViewController
        window.makeKeyAndVisible()
    }
}

