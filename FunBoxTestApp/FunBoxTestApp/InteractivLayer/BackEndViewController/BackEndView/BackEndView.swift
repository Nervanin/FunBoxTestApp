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
    //delegate's
    var delegate: ButtonDelegate!
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        backgroundColor = #colorLiteral(red: 0, green: 0.4784313725, blue: 1, alpha: 1)
        setUpTableView(frame: frame)
        setUpButtons()
    }
    
    func setUpTableView(frame: CGRect) {
        tableView = UITableView(frame: CGRect(x: 0, y: 0, width: frame.width, height: frame.height / 1.13), style: .plain)
        tableView.dataSource = tableViewDataSource
        // tableView.delegate = UITableViewDelegate
        self.addSubview(tableView)
        
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: tableViewDataSource.backEndCellId)
    }
    
    @objc func buttonPress(button: UIButton) {
        delegate.buttonDidPressed(button: storeFrontButton)
    }
    
    func setUpButtons() {
        //set storeFrontButton
        self.addSubview(storeFrontButton)
        storeFrontButton.backgroundColor = #colorLiteral(red: 0.6000000238, green: 0.6000000238, blue: 0.6000000238, alpha: 1)
        storeFrontButton.layer.borderColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        storeFrontButton.layer.borderWidth = 3
        storeFrontButton.setTitle("Store-Front", for: .normal)
        
        //set backEndButton
        self.addSubview(backEndButton)
        backEndButton.backgroundColor = #colorLiteral(red: 0.6000000238, green: 0.6000000238, blue: 0.6000000238, alpha: 1)
        backEndButton.layer.borderColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        backEndButton.layer.borderWidth = 3
        backEndButton.setTitle("Back-End", for: .normal)
        
        storeFrontButton.addTarget(self, action: #selector(buttonPress), for: .touchUpInside)
        
        setConstraints()
    
    }
    
    func setConstraints() {
        
        storeFrontButton.snp.makeConstraints { (make) in
            make.left.equalTo(0)
            make.bottom.equalTo(0)
            make.width.equalTo(187.5)
            make.height.equalTo(75)
        }
        
        backEndButton.snp.makeConstraints { (make) in
            make.left.equalTo(storeFrontButton.snp.right)
            make.bottom.equalTo(0)
            make.width.equalTo(187.5)
            make.height.equalTo(75)
        }
    }
    
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
