//
//  ViewController.swift
//  FunBoxTestApp
//
//  Created by Konstantin on 25/04/2019.
//  Copyright © 2019 Konstantin Meleshko. All rights reserved.
//

import UIKit

class StoreFrontViewController: UIViewController {
    
    
    //var view: StroreFrontView?
    var parseDeviceData = ParseDataSource()
    var storeFrontView = StoreFrontView()
    var backEndVC = BackEndViewController()
    var storeFrontButton = UIButton(type: .custom)
    var customView: UIView?
    
    override func loadView() {
        super.loadView()
      
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        addStoreObj()
        parseDeviceData.parseDevice()
    }
    
    func addStoreObj() {
        let storeFrontView = StoreFrontView(frame: view.frame)
        storeFrontView.delegate = self
        self.view.addSubview(storeFrontView)
    }
    
    @objc func backEndButtonDidPressed(_ sender: UIButton) {
        if sender == storeFrontButton {
            let backEndViewController = BackEndViewController()
            navigationController?.pushViewController(backEndViewController, animated: true)
            print("pressed")
        }
    }
    
}

extension StoreFrontViewController: StoreDelegate {
    func backEndButtonDidPressed(button: UIButton) {
        navigationController?.pushViewController(backEndVC, animated: true)
    }
    
    
}

