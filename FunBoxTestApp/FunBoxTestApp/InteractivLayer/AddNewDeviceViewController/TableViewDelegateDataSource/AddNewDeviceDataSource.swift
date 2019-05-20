//
//  AddNewDeviceDataSource.swift
//  FunBoxTestApp
//
//  Created by Konstantin on 14/05/2019.
//  Copyright © 2019 Konstantin Meleshko. All rights reserved.
//

import UIKit

class AddNewDeviceDataSource: NSObject, UITableViewDataSource {
    
    var addNewDeviceCellId = "addNewDeviceCellId"
    var modelNameCellId = "modelNameCellId"
    var priceCell = "priceCell"
    var countCell = "countCell"
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.row == 0 {
            let modelCell = tableView.dequeueReusableCell(withIdentifier: modelNameCellId)
            modelCell?.textLabel?.text = "Название"
            return modelCell ?? UITableViewCell()
        } else if indexPath.row == 1 {
            
        } else if indexPath.row == 2 {
            let priceCell = tableView.dequeueReusableCell(withIdentifier: self.priceCell)
            priceCell?.textLabel?.text = "Цена"
            return priceCell ?? UITableViewCell()
        } else if indexPath.row == 3 {
            
        } else if indexPath.row == 4 {
            let countCell = tableView.dequeueReusableCell(withIdentifier: self.countCell)
            countCell?.textLabel?.text = "Количество"
            return countCell ?? UITableViewCell()
        }
        
        
        return UITableViewCell()
    }
    
    
    
    
}
