//
//  BackEndView.swift
//  FunBoxTestApp
//
//  Created by Konstantin on 06/05/2019.
//  Copyright © 2019 Konstantin Meleshko. All rights reserved.
//

import UIKit

class BackEndView: UIView {
    
    //tableView
    var tableView = UITableView()
    var tableViewDataSource = BackEndTableViewDataSource()
    //buttons
    var storeFrontButton = UIButton()
    var backEndButton = UIButton()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        backgroundColor = #colorLiteral(red: 0, green: 0.4784313725, blue: 1, alpha: 1)
        setUpTableView(frame: frame)
    }
    
    func setUpTableView(frame: CGRect) {
        tableView = UITableView(frame: CGRect(x: 0, y: 0, width: frame.width, height: frame.height / 3), style: .plain)
        tableView.dataSource = tableViewDataSource
       // tableView.delegate = UITableViewDelegate
        self.addSubview(tableView)
    }
    
    
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
