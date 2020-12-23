//
//  LFTableViewCell.swift
//  Radio_Multiselect
//
//  Created by LF on 2017/11/23.
//  Copyright © 2017年 LLBT. All rights reserved.
//

import UIKit


class LFTableViewCell: UITableViewCell {
    
    var btn:UIButton?
    
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        createSubViews()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    // MARK: - 创建子视图
    func createSubViews() {
        let btn = UIButton.init(type: .custom)
        btn.frame = CGRect.init(x: 10, y: 0, width: 100, height: 44)
        btn.setTitleColor(UIColor.red, for: .normal)
        btn.setTitleColor(UIColor.white, for: .selected)
        btn.setTitle("", for: .normal)
        
        btn.backgroundColor = UIColor.lightGray
        
        self.btn = btn
        self.addSubview(btn)
    }
    
    
}
