//
//  UIView+Extension.swift
//  YBAttributeTextTapForSwfit-Demo
//
//  Created by LF on 2017/10/17.
//  Copyright © 2017年 LYB. All rights reserved.
//

import UIKit

extension UIView {
    
    // MARK: - view 通过响应者链获取控制器
    func viewGetController() -> (UIViewController?) {
        
        var nextRespond = self.next
        
        repeat {
            if (nextRespond?.isKind(of: UIViewController.self))! {
                return nextRespond as? (UIViewController)
            }else {
                nextRespond = nextRespond?.next
            }
        }while (nextRespond != nil)
        
        return nil
    }
    
}
