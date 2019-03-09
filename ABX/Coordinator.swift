//
//  Coordinator.swift
//  ABX
//
//  Created by Smartbox on 08/11/2018.
//  Copyright © 2018 ABX. All rights reserved.
//

import Foundation

class Coordinator {
    
    private(set) var childCoordinators: [Coordinator] = []
    
    // Abstract functions
    func start() {}
    
    func finish() {}
    
    func addChildCoordinator(coordinator: Coordinator) {
        childCoordinators.append(coordinator)
    }
    
    func removeChildCoordinator(_ coordinator: Coordinator) {
        if let index = childCoordinators.index(of: coordinator) {
            childCoordinators.remove(at: index)
        }
    }
    
    func removeAllChildCoordinatorsWith<T>(type: T.Type) {
        childCoordinators = childCoordinators.filter { $0 is T  == false }
    }
    
    func removeAllChildCoordinators() {
        childCoordinators.removeAll()
    }
    
}

extension Coordinator: Equatable {
    static func == (lhs: Coordinator, rhs: Coordinator) -> Bool {
        return lhs === rhs
    }
}
