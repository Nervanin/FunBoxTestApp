//
//  ViewController.swift
//  FunBoxTestApp
//
//  Created by Konstantin on 25/04/2019.
//  Copyright © 2019 Konstantin Meleshko. All rights reserved.
//

import UIKit

class StoreFrontViewController: UIViewController {
    
    var storeFrontView = StoreFrontView()
    var backEndViewController = BackEndViewController()
    
    override func loadView() {
        super.loadView()
      
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        
        addStoreObj()
    }
    
    func addStoreObj() {
        let storeFrontView = StoreFrontView(frame: view.frame)
        storeFrontView.delegate = self
        self.view.addSubview(storeFrontView)
    }

}

extension StoreFrontViewController: ButtonDelegate {
    func buttonDidPressed(button: UIButton) {
        navigationController?.pushViewController(backEndViewController, animated: true)
    }
    
    
}

