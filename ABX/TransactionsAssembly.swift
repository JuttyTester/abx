//
//  TransactionsAssembly.swift
//  ABX
//
//  Created by Smartbox on 08/11/2018.
//  Copyright © 2018 ABX. All rights reserved.
//

import Foundation
import Swinject

class TransactionsAssembly {
    
    func assemble(container: Container) {
        registerTransactionList(container: container)
    }
    
    private func registerTransactionList(container: Container) {
        container.register(TransactionListVC.self) { r in
            TransactionListVC(r.resolve(TransactionListVMLike.self)!)
        }
        
        container.register(TransactionListVMLike.self) { r in
            TransactionListVM(r.resolve(TransactionListModelLike.self)!)
        }
        
        container.register(TransactionListModelLike.self) { r in
            TransactionListModel()
        }
    }
}


