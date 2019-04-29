//
//  ViewController.swift
//  FunBoxTestApp
//
//  Created by Konstantin on 25/04/2019.
//  Copyright © 2019 Konstantin Meleshko. All rights reserved.
//

import UIKit

class StoreFrontViewController: UIViewController {
    
    var storeFrontTableView = StoreFrontTableViewDataSource()
    var tableView: UITableView?
    var parseDeviceData = ParseDataSource()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView = UITableView(frame: CGRect(x: 0, y: 0, width: view.frame.width, height: view.frame.height / 1.5))
        tableView?.backgroundColor = #colorLiteral(red: 0.9999960065, green: 1, blue: 1, alpha: 1)
        parseDeviceData.parseDevice()
        
        tableView?.register(ModelLabelTableViewCell.self, forCellReuseIdentifier: storeFrontTableView.modellabelTableCellId)
        
        tableView?.dataSource = storeFrontTableView
        
        view.addSubview(tableView ?? UIView())
    }
    
}

