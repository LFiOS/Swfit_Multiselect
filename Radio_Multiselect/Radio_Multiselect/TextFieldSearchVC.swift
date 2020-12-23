//
//  TextFiledSearchVC.swift
//  Radio_Multiselect
//
//  Created by LF on 2017/12/7.
//  Copyright © 2017年 LLBT. All rights reserved.
//

import UIKit


class TextFieldSearchVC: UIViewController {
    
    /** 搜索框 */
    lazy var searchField: UITextField = {
        let field = UITextField.init()
        return field
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }
    
    /** 创建子视图 */
    func createSubViews() {
        self.view.addSubview(self.searchField)
        //self.searchField.snp.ma
    }
    
    
}
