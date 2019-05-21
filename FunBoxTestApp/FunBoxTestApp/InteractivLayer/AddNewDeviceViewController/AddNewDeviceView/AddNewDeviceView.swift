//
//  AddNewDeviceView.swift
//  FunBoxTestApp
//
//  Created by Konstantin on 14/05/2019.
//  Copyright © 2019 Konstantin Meleshko. All rights reserved.
//

import UIKit

class AddNewDeviceView: UIView {
    
    //tableView
    var tableView = UITableView()
    //tableViewDataSource & Deleagte
    var tableViewDataSource = AddNewDeviceDataSource()
    //name
    var nameLabel = UILabel()
    var nameTextField = UITextField()
    //price
    var priceLabel = UILabel()
    var priceTextField = UITextField()
    //count
    var countLabel = UILabel()
    var countTextField = UITextField()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
       setUpTableView(frame: frame)
    }
    
    func setUpTableView(frame: CGRect) {
        tableView = UITableView(frame: frame)
        
        self.addSubview(tableView)
        
        tableView.dataSource = tableViewDataSource
        
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: tableViewDataSource.addNewDeviceCellId)
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: tableViewDataSource.modelNameCellId)
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: tableViewDataSource.priceCell)
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: tableViewDataSource.countCell)
        tableView.register(InputModelNameTableViewCell.self, forCellReuseIdentifier: tableViewDataSource.inputModelCellId)
        tableView.register(InputPriceTableViewCell.self, forCellReuseIdentifier: tableViewDataSource.inputPriceCellId)
        tableView.register(InputCountTableViewCell.self, forCellReuseIdentifier: tableViewDataSource.inputCountCellId)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    
}
