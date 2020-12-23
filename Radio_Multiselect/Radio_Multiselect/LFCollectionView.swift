//
//  LFCollectionView.swift
//  Radio_Multiselect
//
//  Created by LF on 2017/11/24.
//  Copyright © 2017年 LLBT. All rights reserved.
//

import UIKit

enum CollectionType:Int {
    case radio = 1;
    case multiselect = 2
}

class LFCollectionView: UICollectionView, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    
    private let Cell_ID = "LFCollectionViewCell_ID"
    private let Header_ID = "CollectionHeader_ID"
    
    var collectionType:CollectionType?
    var selectModel1:ItemModel?
    var selectModel2:ItemModel?
    var selectModel3:ItemModel?
    var selectModel4:ItemModel?
    
    
    var collectionData:[CollectionSectionModel]? {
        didSet {
            if self.collectionType == .radio {
                // 单选
                let sectionModel = collectionData?.first
                selectModel1 = sectionModel?.itemModels?.first
            }
            self.reloadData()
        }
    }
    
    
    override init(frame: CGRect, collectionViewLayout layout: UICollectionViewLayout) {
        
        let flowLayout = UICollectionViewFlowLayout.init()
        flowLayout.minimumLineSpacing = 5.0
        flowLayout.minimumInteritemSpacing = 5.0
        
        let Margin_X:CGFloat = 4 * 5.0
        let Item_Width = (UIScreen.main.bounds.width - Margin_X) / 3.0
        
        flowLayout.itemSize = CGSize.init(width: Item_Width, height: 44)
        
        super.init(frame: frame, collectionViewLayout: flowLayout)
        
        self.delegate = self
        self.dataSource = self
        self.isPagingEnabled = false
        self.backgroundColor = UIColor.white
        
        // 注册单元格
        self.register(LFCollectionViewCell.self, forCellWithReuseIdentifier: Cell_ID)
        self.register(HeaderReusableView.self, forSupplementaryViewOfKind: UICollectionView.elementKindSectionHeader, withReuseIdentifier: Header_ID)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    // MARK: - <UICollectionViewDataSource>
    public func numberOfSections(in collectionView: UICollectionView) -> Int {
        let count = self.collectionData?.count
        if count != nil && count! > 0 {
            return count!
        }
        return 1
    }
    public func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        let sectionModel:CollectionSectionModel = (self.collectionData?[section])!
        let cout = sectionModel.itemModels?.count
        if cout! > 0 {
            return cout!
        }
        return 0
    }
    
    @available(iOS 6.0, *)
    public func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell{
        
        let cell:LFCollectionViewCell = collectionView.dequeueReusableCell(withReuseIdentifier: Cell_ID, for: indexPath) as! LFCollectionViewCell
        
        let sectionModel:CollectionSectionModel = (self.collectionData?[indexPath.section])!
        let itemModel = sectionModel.itemModels?[indexPath.item]
        
        if (itemModel?.isSelect)! {
            cell.titleLabel?.textColor = UIColor.white
            cell.titleLabel?.backgroundColor = UIColor.orange
        }else {
            cell.titleLabel?.textColor = UIColor.red
            cell.titleLabel?.backgroundColor = UIColor.gray
        }
        
        cell.titleLabel?.text = itemModel?.itemTitle
        
        return cell
        
    }
    // 头视图
    func collectionView(_ collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: IndexPath) -> UICollectionReusableView {
        
        let header:HeaderReusableView = collectionView.dequeueReusableSupplementaryView(ofKind: UICollectionView.elementKindSectionHeader, withReuseIdentifier: Header_ID, for: indexPath) as! HeaderReusableView
        
        let sectionModel:CollectionSectionModel = (self.collectionData?[indexPath.section])!
        //let itemModel = sectionModel.itemModels?[indexPath.item]
        
        header.headerLabel?.text = sectionModel.sectionTitle
        
        return header
        
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, referenceSizeForHeaderInSection section: Int) -> CGSize {
        return CGSize.init(width: self.bounds.width, height: 40)
    }
    
    
    // MARK: <UICollectionViewDelegate>
    public func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        collectionView.deselectItem(at: indexPath, animated: true)
        
        
        if self.collectionType == .radio {
            // 单选
            let sectionModel:CollectionSectionModel = (self.collectionData?[indexPath.section])!
            let itemModel = sectionModel.itemModels?[indexPath.item]
            
            switch indexPath.section {
            case 0:
                // 第一组 单选
                itemModel?.isSelect = !(itemModel?.isSelect)!
                selectModel1?.isSelect = !(selectModel1?.isSelect)!
                selectModel1 = itemModel;
                break
            case 1:
                // 第二组 单选
                itemModel?.isSelect = !(itemModel?.isSelect)!
                selectModel2?.isSelect = !(selectModel1?.isSelect)!
                selectModel2 = itemModel;
                break
            case 2:
                // 第三组 单选
                itemModel?.isSelect = !(itemModel?.isSelect)!
                selectModel3?.isSelect = !(selectModel1?.isSelect)!
                selectModel3 = itemModel;
                break
            case 3:
                // 第四组 单选
                itemModel?.isSelect = !(itemModel?.isSelect)!
                selectModel4?.isSelect = !(selectModel1?.isSelect)!
                selectModel4 = itemModel;
                break
            default:
                break
            }
            
            if (itemModel?.isSelect)! {
                print("选中了\(sectionModel.sectionTitle) \(itemModel?.itemTitle)")
            }else {
                print("取消了\(sectionModel.sectionTitle) \(itemModel?.itemTitle)")
            }
            self.reloadData()
            
        }else {
            // 多选
            let sectionModel:CollectionSectionModel = (self.collectionData?[indexPath.section])!
            let itemModel = sectionModel.itemModels?[indexPath.item]
            
            itemModel?.isSelect = !(itemModel?.isSelect)!
            
            if (itemModel?.isSelect)! {
                print("选中了\(sectionModel.sectionTitle) \(itemModel?.itemTitle)")
            }else {
                print("取消了\(sectionModel.sectionTitle) \(itemModel?.itemTitle)")
            }
            self.reloadData()
        }
        
        
        
    }
    
    
    
}
