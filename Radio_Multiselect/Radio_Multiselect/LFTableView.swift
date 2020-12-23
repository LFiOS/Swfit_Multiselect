//
//  LFTableView.swift
//  Radio_Multiselect
//
//  Created by LF on 2017/11/23.
//  Copyright © 2017年 LLBT. All rights reserved.
//

import UIKit

enum Table_Type:Int {
    case radio = 1;
    case multiselect = 2
}

class LFTableView: UITableView, UITableViewDataSource, UITableViewDelegate {
    
    private let Cell_ID = "LFTableViewCell_ID"
    
    var tableType:Table_Type?
    var selectModel:LFTableModel?   // 单选标记
    
    
    var tableData:[LFTableModel]? {
        didSet {
            
            if self.tableType == .radio {
                // 单选
                selectModel = tableData?.first
            }
            
            
            self.reloadData()
        }
    }
    
    
    override init(frame: CGRect, style: UITableView.Style) {
        super.init(frame: frame, style: .plain)
        
        self.delegate = self
        self.dataSource = self
        // 注册单元格
        self.register(LFTableViewCell.self, forCellReuseIdentifier: Cell_ID)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    // MARK: - <UITableViewDataSource>
    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        let count = self.tableData?.count
        if count! > 0 {
            return count!
        }
        return 0
    }
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell{
        let cell:LFTableViewCell = tableView.dequeueReusableCell(withIdentifier: Cell_ID, for: indexPath) as! LFTableViewCell
        
        
        let model:LFTableModel = (self.tableData?[indexPath.row])!
        
        
        if model.isSelect! {
            cell.btn?.backgroundColor = UIColor.orange
        }else {
            cell.btn?.backgroundColor = UIColor.gray
        }
        
        cell.btn?.isSelected = model.isSelect!
        
        cell.btn?.tag = indexPath.row
        cell.btn?.setTitle(model.title, for: .normal)
        cell.btn?.addTarget(self, action: #selector(buttonAction), for: .touchUpInside)
        
        return cell
    }
    
    // MARK: <UITableViewDelegate>
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        //self.viewGetController()?.navigationController?.pushViewController(nil, animated: true)
    }
    
    // MARK: - <buttonAction>
    @objc func buttonAction(button: UIButton) {
        
        
        if self.tableType == .radio {
            
            // 单选
            let index = button.tag
            let model:LFTableModel = (self.tableData?[index])!;
            
            if selectModel != model {
                model.isSelect = !model.isSelect!
                selectModel?.isSelect = !(selectModel?.isSelect)!
            }
            selectModel = model
            self.reloadData()
            
        }else {
            
            // 多选
            let index = button.tag
            let model:LFTableModel = (self.tableData?[index])!;
            model.isSelect = !model.isSelect!
            
            if model.isSelect! {
                button.backgroundColor = UIColor.orange
            }else {
                button.backgroundColor = UIColor.lightGray
            }
            self.reloadData()
            
        }
        
        
    }
    
}
