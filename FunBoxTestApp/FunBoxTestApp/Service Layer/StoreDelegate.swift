//
//  ViewProtocol.swift
//  FunBoxTestApp
//
//  Created by Konstantin on 05/05/2019.
//  Copyright © 2019 Konstantin Meleshko. All rights reserved.
//

import UIKit

@objc protocol StoreDelegate {
    @objc func backEndButtonDidPressed(button: UIButton)
}
