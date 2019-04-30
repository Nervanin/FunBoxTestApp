//
//  ViewController.swift
//  FunBoxTestApp
//
//  Created by Konstantin on 25/04/2019.
//  Copyright © 2019 Konstantin Meleshko. All rights reserved.
//

import UIKit

class StoreFrontViewController: UIViewController {
 
    var parseDeviceData = ParseDataSource()
    
    override func loadView() {
        super.loadView()
        
        view = StroreFrontView(frame: view.frame)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        parseDeviceData.parseDevice()
    }
    
}

