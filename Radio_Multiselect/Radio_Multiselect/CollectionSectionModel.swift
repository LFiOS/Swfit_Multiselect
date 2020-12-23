//
//  LFCollectionModel.swift
//  Radio_Multiselect
//
//  Created by LF on 2017/11/24.
//  Copyright © 2017年 LLBT. All rights reserved.
//

import UIKit

class CollectionSectionModel: NSObject {
    var sectionTitle:String?
    var itemModels:[ItemModel]?
    
    class func modelData() -> [CollectionSectionModel]? {
        
        var modelArrays:[CollectionSectionModel] = []
        
        let sectionModel1 = CollectionSectionModel.init()
        let itemModel001 = ItemModel.init(itemTitle: "单元格一", isSelect: true)
        let itemModel002 = ItemModel.init(itemTitle: "单元格二", isSelect: false)
        let itemModel003 = ItemModel.init(itemTitle: "单元格三", isSelect: false)
        let itemModel004 = ItemModel.init(itemTitle: "单元格四", isSelect: false)
        sectionModel1.itemModels = [itemModel001,itemModel002,itemModel003,itemModel004]
        sectionModel1.sectionTitle = "组一"
        
        let sectionModel2 = CollectionSectionModel.init()
        let itemModel011 = ItemModel.init(itemTitle: "单元格一", isSelect: false)
        let itemModel012 = ItemModel.init(itemTitle: "单元格二", isSelect: false)
        let itemModel013 = ItemModel.init(itemTitle: "单元格三", isSelect: false)
        let itemModel014 = ItemModel.init(itemTitle: "单元格四", isSelect: false)
        let itemModel015 = ItemModel.init(itemTitle: "单元格五", isSelect: false)
        let itemModel016 = ItemModel.init(itemTitle: "单元格六", isSelect: false)
        let itemModel017 = ItemModel.init(itemTitle: "单元格七", isSelect: false)
        sectionModel2.itemModels = [itemModel011,itemModel012,itemModel013,itemModel014,itemModel015,itemModel016,itemModel017]
        sectionModel2.sectionTitle = "组二"
        
        let sectionModel3 = CollectionSectionModel.init()
        let itemModel021 = ItemModel.init(itemTitle: "单元格一", isSelect: false)
        let itemModel022 = ItemModel.init(itemTitle: "单元格二", isSelect: false)
        let itemModel023 = ItemModel.init(itemTitle: "单元格三", isSelect: false)
        let itemModel024 = ItemModel.init(itemTitle: "单元格四", isSelect: false)
        let itemModel025 = ItemModel.init(itemTitle: "单元格五", isSelect: false)
        let itemModel026 = ItemModel.init(itemTitle: "单元格六", isSelect: false)
        let itemModel027 = ItemModel.init(itemTitle: "单元格七", isSelect: false)
        sectionModel3.itemModels = [itemModel021,itemModel022,itemModel023,itemModel024,itemModel025,itemModel026,itemModel027]
        sectionModel3.sectionTitle = "组三"
        
        let sectionModel4 = CollectionSectionModel.init()
        let itemModel031 = ItemModel.init(itemTitle: "单元格一", isSelect: false)
        let itemModel032 = ItemModel.init(itemTitle: "单元格二", isSelect: false)
        let itemModel033 = ItemModel.init(itemTitle: "单元格三", isSelect: false)
        let itemModel034 = ItemModel.init(itemTitle: "单元格四", isSelect: false)
        let itemModel035 = ItemModel.init(itemTitle: "单元格五", isSelect: false)
        let itemModel036 = ItemModel.init(itemTitle: "单元格六", isSelect: false)
        let itemModel037 = ItemModel.init(itemTitle: "单元格七", isSelect: false)
        sectionModel4.itemModels = [itemModel031,itemModel032,itemModel033,itemModel034,itemModel035,itemModel036,itemModel037]
        sectionModel4.sectionTitle = "组四"
        
        modelArrays.append(sectionModel1)
        modelArrays.append(sectionModel2)
        modelArrays.append(sectionModel3)
        modelArrays.append(sectionModel4)
        
        return modelArrays
    }
    
    
}




class ItemModel: NSObject {
    var itemTitle:String?
    var isSelect:Bool?
    
    // 初始化方法
    override init() {
        super.init()
        
    }
    
    convenience init(itemTitle:String, isSelect:Bool) {
        self.init()
        self.itemTitle = itemTitle
        self.isSelect = isSelect
    }
    
}
