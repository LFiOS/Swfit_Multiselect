//
//  LFTableModel.swift
//  Radio_Multiselect
//
//  Created by LF on 2017/11/23.
//  Copyright © 2017年 LLBT. All rights reserved.
//

import UIKit

class LFTableModel: NSObject {
    
    var title:String?
    var isSelect:Bool?
    
    override init() {
        super.init()
    }
    convenience init(title:String, isSelect:Bool) {
        self.init()
        self.title = title
        self.isSelect = isSelect
    }
    
    class func modelData() -> [LFTableModel]? {
        
        var modelArrays:[LFTableModel] = []
        
        
        let model1 = LFTableModel.init(title: "title1", isSelect: true)
        
        let model2 = LFTableModel.init(title: "title2", isSelect: false)
        
        let model3 = LFTableModel.init(title: "title3", isSelect: false)
        
        let model4 = LFTableModel.init(title: "title4", isSelect: false)
        
        let model5 = LFTableModel.init(title: "title5", isSelect: false)
        
        let model6 = LFTableModel.init(title: "title6", isSelect: false)
        
        let model7 = LFTableModel.init(title: "title7", isSelect: false)
        
        let model8 = LFTableModel.init(title: "title8", isSelect: false)
        
        let model9 = LFTableModel.init(title: "title9", isSelect: false)
        
        let model10 = LFTableModel.init(title: "title10", isSelect: false)
        
        let model11 = LFTableModel.init(title: "title11", isSelect: false)
        
        let model12 = LFTableModel.init(title: "title12", isSelect: false)
        
        let model13 = LFTableModel.init(title: "title13", isSelect: false)
        
        let model14 = LFTableModel.init(title: "title14", isSelect: false)
        
        let model15 = LFTableModel.init(title: "title15", isSelect: false)
        
        modelArrays.append(model1)
        modelArrays.append(model2)
        modelArrays.append(model3)
        modelArrays.append(model4)
        modelArrays.append(model5)
        modelArrays.append(model6)
        modelArrays.append(model7)
        modelArrays.append(model8)
        modelArrays.append(model9)
        modelArrays.append(model10)
        modelArrays.append(model11)
        modelArrays.append(model12)
        modelArrays.append(model13)
        modelArrays.append(model14)
        modelArrays.append(model15)
        
        return modelArrays
    }
    
}
