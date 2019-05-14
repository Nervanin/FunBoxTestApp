//
//  StoreFrontTableViewDelegate.swift
//  FunBoxTestApp
//
//  Created by Konstantin on 25/04/2019.
//  Copyright © 2019 Konstantin Meleshko. All rights reserved.
//

import UIKit

class StoreFrontTableViewDataSource: NSObject {
    
     var modellabelTableCellId = "modellabelTableCellId"
}

extension StoreFrontTableViewDataSource: UITableViewDelegate {
    
}

extension StoreFrontTableViewDataSource: UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: modellabelTableCellId, for: indexPath) as! ModelLabelTableViewCell
        cell.modelLabel.text = "123"
        cell.backgroundColor = #colorLiteral(red: 0.9999960065, green: 1, blue: 1, alpha: 1)
        return cell
    }
    
}
