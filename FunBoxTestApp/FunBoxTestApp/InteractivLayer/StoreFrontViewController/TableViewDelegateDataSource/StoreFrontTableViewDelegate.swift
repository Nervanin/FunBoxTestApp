//
//  StoreFrontTableViewDelegate.swift
//  FunBoxTestApp
//
//  Created by Konstantin on 30/04/2019.
//  Copyright © 2019 Konstantin Meleshko. All rights reserved.
//

import UIKit

class StoreFrontTableViewDelegate: NSObject, UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, estimatedHeightForRowAt indexPath: IndexPath) -> CGFloat {
        return UITableView.automaticDimension
    }
}
