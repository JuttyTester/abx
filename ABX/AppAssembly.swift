//
//  AppAssembly.swift
//  ABX
//
//  Created by Smartbox on 08/11/2018.
//  Copyright © 2018 ABX. All rights reserved.
//

import Foundation
import Swinject

class AppAssembly {
    
    let container = Container()

    // Child assemblies
    lazy var transactionAssembly: TransactionsAssembly = {
        TransactionsAssembly()
    }()
    
    func assemble() {
        transactionAssembly.assemble(container: container)
    }
}
