//
//  BaseTableView.swift
//  Radio_Multiselect
//
//  Created by LF on 2017/11/23.
//  Copyright © 2017年 LLBT. All rights reserved.
//

import UIKit


class BaseTableView: UITableView, UITableViewDataSource,UITableViewDelegate {
    
    private let Cell_ID = "BaseTableViewCell_ID"
    
    var baseData:[String]? {
        didSet {
            self.reloadData()
        }
    }
    
    
    override init(frame: CGRect, style: UITableView.Style) {
        super.init(frame: frame, style: .plain)
        
        self.delegate = self
        self.dataSource = self
        // 注册单元格
        self.register(UITableViewCell.self, forCellReuseIdentifier: Cell_ID)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    // MARK: - <UITableViewDataSource>
    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        let count = self.baseData?.count
        if count! > 0 {
            return count!
        }
        return 0
    }
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell{
        let cell = tableView.dequeueReusableCell(withIdentifier: Cell_ID, for: indexPath)
        cell.textLabel?.text = self.baseData?[indexPath.item]
        return cell
    }
    
    // MARK: - <UITableViewDelegate>
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        //self.viewGetController()?.navigationController?.pushViewController(nil, animated: true)
        
        let index = indexPath.row
        switch index {
        case 0:
            // tableView单选
            let tableVC = LFTableVC()
            tableVC.tableType = .radio
            self.viewGetController()?.navigationController?.pushViewController(tableVC, animated: true)
            break
        case 1:
            // tableView多选
            let tableVC = LFTableVC()
            tableVC.tableType = .multiselect
            self.viewGetController()?.navigationController?.pushViewController(tableVC, animated: true)
            break
        case 2:
            // collectionView单选
            let collectionVC = LFCollectionVC()
            collectionVC.collectionType = .radio
            self.viewGetController()?.navigationController?.pushViewController(collectionVC, animated: true)
            break
        case 3:
            // collectionView多选
            let collectionVC = LFCollectionVC()
            collectionVC.collectionType = .multiselect
            self.viewGetController()?.navigationController?.pushViewController(collectionVC, animated: true)
            break
        default:
            break
        }
    }
    
    
}
