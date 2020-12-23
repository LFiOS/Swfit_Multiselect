//
//  TableVC.swift
//  Radio_Multiselect
//
//  Created by LF on 2017/11/23.
//  Copyright © 2017年 LLBT. All rights reserved.
//

import UIKit


class LFTableVC: UIViewController {
    
    lazy var tableModels:[LFTableModel]? = {
        let models = LFTableModel.modelData()
        return models
    }()
    
    var tableType:Table_Type?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        createSubViews()
        
    }
    
    func createSubViews() {
        let tableView = LFTableView.init(frame: self.view.bounds, style: .plain)
        tableView.tableType = self.tableType
        tableView.tableData = tableModels
        //self.tableView = tableView
        self.view.addSubview(tableView)
    }
    
    
}

