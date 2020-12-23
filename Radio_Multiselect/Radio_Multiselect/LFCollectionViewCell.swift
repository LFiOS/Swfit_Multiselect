//
//  LFCollectionViewCell.swift
//  Radio_Multiselect
//
//  Created by LF on 2017/11/24.
//  Copyright © 2017年 LLBT. All rights reserved.
//

import UIKit

class LFCollectionViewCell: UICollectionViewCell {
    
    var titleLabel:UILabel?
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        //self.backgroundColor = UIColor.init(white: 0.3, alpha: 0.5)
        createSubViews()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    // MARK: - 创建子视图
    func createSubViews() {
        
        let titleLabel = UILabel.init()
        titleLabel.frame = CGRect.init(x: 10, y: 10, width: self.frame.width - 20, height: self.frame.height - 20)
        
        titleLabel.textAlignment = .center
        titleLabel.backgroundColor = UIColor.lightGray
        
        self.titleLabel = titleLabel
        self.addSubview(titleLabel)
    }
    
}


class HeaderReusableView: UICollectionReusableView {
    
    var headerLabel:UILabel?
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        createSubViews()
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: - 创建子视图
    func createSubViews() {
        let headerLabel = UILabel.init()
        headerLabel.frame = CGRect.init(x: 5, y: 5, width: self.frame.width - 10, height: 30)
        
        headerLabel.textAlignment = .center
        headerLabel.backgroundColor = UIColor.lightGray
        
        self.headerLabel = headerLabel
        self.addSubview(headerLabel)
    }
    
}


