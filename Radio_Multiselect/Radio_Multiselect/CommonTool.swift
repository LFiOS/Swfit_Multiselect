//
//  CommonTool.swift
//  Radio_Multiselect
//
//  Created by LF on 2017/12/8.
//  Copyright © 2017年 LLBT. All rights reserved.
//

// 工具类


import UIKit

/** iphone设备类型 */
enum Iphone_Type:NSInteger {
    case unKonw = 0
    case iphone_4 = 1
    case iphone_5 = 2
    case iphone_6_7_8 = 3
    case iphone_6_7_8_Plus = 4
    case iphone_X = 5
}


class CommonTool: NSObject {
    
    
    // MARK: - 类方法
    // MARK: 设置RGB颜色
    class func ct_RGBColor(red:CGFloat, green:CGFloat, blue:CGFloat, alpha:CGFloat) -> UIColor {
        let color = UIColor.init(red: red/255.0, green: green/255.0, blue: blue/255.0, alpha: alpha)
        return color
    }
    
    // MARK: 设置字体大小
    class func ct_font(size:CGFloat) -> UIFont {
        let font = UIFont.systemFont(ofSize: size)
        return font
    }
    class func ct_fontBold(size:CGFloat) -> UIFont {
        let font = UIFont.boldSystemFont(ofSize: size)
        return font
    }
    
    // MARK: - 判断类方法
    // MARK: iphone类型
    class func ct_iphoneType() -> Iphone_Type {
        let deviceHeight = UIScreen.main.bounds.height
        let deviceWidth = UIScreen.main.bounds.height
        if deviceHeight == 480.0 {
            // 3.5寸屏幕
            return .iphone_4
        }else if (deviceHeight == 568.0) {
            // 4.0寸屏幕
            return .iphone_5
        }else if (deviceHeight == 667.0 || deviceWidth == 667.0) {
            // 4.7寸屏幕
            return .iphone_6_7_8
        }else if (deviceHeight == 812.0 || deviceWidth == 812.0) {
            // 5.8寸屏幕
            return .iphone_X
        }else if (deviceHeight == 736.0 || deviceWidth == 736.0) {
            // 5.5寸屏幕
            return .iphone_6_7_8_Plus
        }else {
            return .unKonw
        }
    }
    // MARK: 手机号码
    class func ct_isPhoneNumber(phoneNumber: Int) -> Bool {
        let phoneRegex = "1[34578]([0-9]){9}"
        let predicate = NSPredicate(format: "SELF MATCHES %@", phoneRegex)
        return predicate.evaluate(with:phoneNumber)
    }
    
    // MARK: - 转换类方法
    // MARK: 数字金额格式化（￥123,456,789.00）
    class func ct_money(money:Float) -> String {
        let formatter = NumberFormatter.init()
        formatter.numberStyle = .currency
        
        let moneyString = formatter.string(from: NSNumber.init(value: money)) ?? ""
        return moneyString
    }
    
    
    
    
}
