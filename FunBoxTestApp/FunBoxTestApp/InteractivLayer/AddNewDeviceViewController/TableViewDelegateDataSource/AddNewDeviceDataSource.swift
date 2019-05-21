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
    var inputModelCellId = "inputModelCellId"
    var inputPriceCellId = "inputPriceCellId"
    var inputCountCellId = "inputCountCellId"
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 6
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.row == 0 {
            let modelCell = tableView.dequeueReusableCell(withIdentifier: modelNameCellId)
            modelCell?.textLabel?.text = "Название"
            return modelCell ?? UITableViewCell()
        } else if indexPath.row == 1 {
            let inputModelName = tableView.dequeueReusableCell(withIdentifier: inputModelCellId) as! InputModelNameTableViewCell
            return inputModelName
        } else if indexPath.row == 2 {
            let priceCell = tableView.dequeueReusableCell(withIdentifier: self.priceCell)
            priceCell?.textLabel?.text = "Цена"
            return priceCell ?? UITableViewCell()
        } else if indexPath.row == 3 {
            let inputPriceCell = tableView.dequeueReusableCell(withIdentifier: self.inputPriceCellId) as! InputPriceTableViewCell
            return inputPriceCell
        } else if indexPath.row == 4 {
            let countCell = tableView.dequeueReusableCell(withIdentifier: self.countCell)
            countCell?.textLabel?.text = "Количество"
            return countCell ?? UITableViewCell()
        } else if indexPath.row == 5 {
            let inputCountCell = tableView.dequeueReusableCell(withIdentifier: self.inputCountCellId) as! InputCountTableViewCell
            return inputCountCell
        }
        
        
        return UITableViewCell()
    }
    
    
    
    
}
