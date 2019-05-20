//
//  StoreFrontTableViewDelegate.swift
//  FunBoxTestApp
//
//  Created by Konstantin on 25/04/2019.
//  Copyright © 2019 Konstantin Meleshko. All rights reserved.
//

import UIKit

class StoreFrontTableViewDataSource: NSObject {
    
    //Cells identifire
    var modellabelTableCellId = "modellabelTableCellId"
    var priceLabelTableCellId = "priceLabelTableCellId"
    var countLabelTableCellId = "countLabelTableCellId"
    //Properys
    var device = Device()
    
    override init() {
        super.init()
        
        ParseDataSource.shared.parseDevice { (model) in
            self.device = model
        }
    }
}


extension StoreFrontTableViewDataSource: UITableViewDelegate {
    
}

extension StoreFrontTableViewDataSource: UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.row == 0 {
            let cellModel = tableView.dequeueReusableCell(withIdentifier: modellabelTableCellId) as! ModelLabelTableViewCell
            cellModel.modelLabel.text = device.device?[indexPath.row].model
            cellModel.backgroundColor = #colorLiteral(red: 0.9999960065, green: 1, blue: 1, alpha: 1)
            return cellModel
        } else if indexPath.row == 1 {
            let cellPrice = tableView.dequeueReusableCell(withIdentifier: priceLabelTableCellId) as! PriceTableViewCell
            cellPrice.priceLabel.text = "Цена"
            cellPrice.priceCountLabel.text = device.device?[indexPath.row].price
            return cellPrice
        } else if indexPath.row == 2 {
            let cellCount = tableView.dequeueReusableCell(withIdentifier: countLabelTableCellId, for: indexPath) as! CountTableViewCell
            cellCount.countLabel.text = "Количество"
            return cellCount
        }
        
        
        return UITableViewCell()
    }
    
}
