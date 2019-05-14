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
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        return UITableViewCell()
    }
    
    
    
    
}
