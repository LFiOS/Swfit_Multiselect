//
//  ViewController.swift
//  Radio_Multiselect
//
//  Created by LF on 2017/11/23.
//  Copyright © 2017年 LLBT. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var baseTableView:UITableView?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        createSubViews()
        
    }

    
    
    func createSubViews() {
        let baseTableView = BaseTableView.init(frame: self.view.bounds, style: .plain)
        baseTableView.baseData = ["tableView单选","tableView多选","collectionView单选","collectionView多选"]
        self.baseTableView = baseTableView
        self.view.addSubview(baseTableView)
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

