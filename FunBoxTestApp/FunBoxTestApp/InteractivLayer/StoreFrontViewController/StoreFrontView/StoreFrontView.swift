//
//  StoreFrontView.swift
//  FunBoxTestApp
//
//  Created by Konstantin on 25/04/2019.
//  Copyright © 2019 Konstantin Meleshko. All rights reserved.
//

import UIKit
import SnapKit

class StroreFrontView: UIView {
    
    //tableView
    var tableView = UITableView()
    var tableViewDataSoutrse = StoreFrontTableViewDataSource()
    var tableViewDelegate = StoreFrontTableViewDelegate()
    //buttons
    var saveButton = UIButton()
    var storeFrontButton = UIButton()
    var backEndButton = UIButton()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = #colorLiteral(red: 0.9999960065, green: 1, blue: 1, alpha: 1)
        setUpTableView(frame: frame)
        setUpButtons()
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setUpTableView(frame: CGRect) {
        //set TableView
        tableView = UITableView(frame: CGRect(x: 0, y: 0, width: frame.width, height: frame.height / 1.5), style: .plain)
        tableView.dataSource = tableViewDataSoutrse
        tableView.delegate = tableViewDelegate
        self.addSubview(tableView)
        
        tableView.register(ModelLabelTableViewCell.self, forCellReuseIdentifier: tableViewDataSoutrse.modellabelTableCellId)
    }
    
    func setUpButtons() {
        //set saveButton
        self.addSubview(saveButton)
        saveButton.backgroundColor = #colorLiteral(red: 0.6000000238, green: 0.6000000238, blue: 0.6000000238, alpha: 1)
        saveButton.layer.borderWidth = 3
        saveButton.layer.borderColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        saveButton.layer.cornerRadius = 5
        saveButton.setTitle("Купить", for: .normal)
        
        //set storeFrontButton
        self.addSubview(storeFrontButton)
        storeFrontButton.backgroundColor = #colorLiteral(red: 0.6000000238, green: 0.6000000238, blue: 0.6000000238, alpha: 1)
        storeFrontButton.layer.borderColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        storeFrontButton.layer.borderWidth = 3
        storeFrontButton.setTitle("Store-Front", for: .normal)
        
        
        setConstraints()
    }
    
    func setConstraints() {
        saveButton.snp.makeConstraints { (make) in
            make.centerX.equalToSuperview()
            make.top.equalTo(tableView.snp.bottom).offset(50)
            make.height.equalTo(45)
            make.width.equalTo(250)
        }
        
        storeFrontButton.snp.makeConstraints { (make) in
            make.left.equalTo(8)
            make.bottom.equalTo(16)
          //  make.height.equalTo(self.frame)
            
        }
    }
}

