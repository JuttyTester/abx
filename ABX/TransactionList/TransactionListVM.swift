//
//  TransactionListVM.swift
//  ABX
//
//  Created by Smartbox on 08/11/2018.
//  Copyright © 2018 ABX. All rights reserved.
//

import Foundation

protocol TransactionListVMLike {
    
}

class TransactionListVM: TransactionListVMLike {
    
    let model: TransactionListModelLike
    init(_ model: TransactionListModelLike) {
        self.model = model
    }
}
