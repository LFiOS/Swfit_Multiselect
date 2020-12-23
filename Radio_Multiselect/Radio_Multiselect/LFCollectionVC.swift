//
//  LFCollectionVC.swift
//  Radio_Multiselect
//
//  Created by LF on 2017/11/24.
//  Copyright © 2017年 LLBT. All rights reserved.
//

import UIKit

class LFCollectionVC: UIViewController {
    
    var collectionType:CollectionType?
    
    lazy var collectionData:[CollectionSectionModel]? = {
       let models = CollectionSectionModel.modelData()
        return models
    }()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        createSubViews()
        
    }
    
    func createSubViews() {
        let collectionView = LFCollectionView.init(frame: self.view.bounds)
        collectionView.collectionType = self.collectionType
        collectionView.collectionData = self.collectionData
        //self.tableView = tableView
        self.view.addSubview(collectionView)
    }
    
}
