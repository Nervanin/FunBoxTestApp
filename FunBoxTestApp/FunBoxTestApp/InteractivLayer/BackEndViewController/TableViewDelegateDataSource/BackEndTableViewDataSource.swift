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
    var device = Device()
    
    override init() {
        super.init()
        
        ParseDataSource.shared.parseDevice { (model) in
            self.device = model
            print(self.device)
        }
    }
}


extension BackEndTableViewDataSource: UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return (device.device?.count ?? 0)
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: self.backEndCellId, for: indexPath) as! BackEndTableViewCell
        //config modelName label for cell
        cell.modelLabel.text = device.device?[indexPath.row].model
        cell.modelLabel.numberOfLines = 0
        //config countLabel label for cell
        cell.countLabel.text = "\(String(describing: device.device![indexPath.row].number)) шт."
        cell.accessoryType = .disclosureIndicator
        
        return cell
    }
    
}
