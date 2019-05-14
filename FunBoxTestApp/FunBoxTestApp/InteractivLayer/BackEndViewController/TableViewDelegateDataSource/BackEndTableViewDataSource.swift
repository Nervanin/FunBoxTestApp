//
//  File.swift
//  FunBoxTestApp
//
//  Created by Konstantin on 07/05/2019.
//  Copyright © 2019 Konstantin Meleshko. All rights reserved.
//

import UIKit

class BackEndTableViewDataSource: NSObject  {
    let backEndCellId = "BackEndCellId"
    var completionHeandler = Device()
    var dataSource = ParseDataSource()
    var deviceArray = Device()
    
    override init() {
        super.init()
        self.dataSource.parseDevice { (completionHeandler) in
            self.deviceArray = completionHeandler
            
        }
    }
}


extension BackEndTableViewDataSource: UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return (deviceArray.device?.count ?? 0)
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: self.backEndCellId, for: indexPath) as! ModelLabelBackEndTableViewCell
        
        cell.modelLabel.text = deviceArray.device?[indexPath.row].model
        
        return cell
    }
    
}
