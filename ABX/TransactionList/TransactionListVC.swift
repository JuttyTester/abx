//
//  TransactionListVC.swift
//  ABX
//
//  Created by Smartbox on 08/11/2018.
//  Copyright © 2018 ABX. All rights reserved.
//

import Foundation
import UIKit
import RxSwift


class BaseTableVC: UIViewController {
    
    let collectionView = UICollectionView(frame: .zero, collectionViewLayout: UICollectionViewFlowLayout())
    
    init() {
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        collectionView.delegate = self
        setupRx()
    }
    
    func setupRx() {
        
    }
}

extension BaseTableVC: UICollectionViewDelegate {}

class TransactionListVC: BaseTableVC {
    
    let viewModel: TransactionListVMLike
    
    init(_ viewModel: TransactionListVMLike) {
        self.viewModel = viewModel
        super.init()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func setupRx() {
        super.setupRx()
        
        
    }
    
}
