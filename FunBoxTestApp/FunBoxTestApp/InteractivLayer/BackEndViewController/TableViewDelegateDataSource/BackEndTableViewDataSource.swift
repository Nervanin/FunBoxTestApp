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
}

extension BackEndTableViewDataSource: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        return UITableViewCell()
    }
    
}
