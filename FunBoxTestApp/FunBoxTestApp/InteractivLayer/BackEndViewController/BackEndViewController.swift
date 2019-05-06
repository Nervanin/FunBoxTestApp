//
//  BackEndViewController.swift
//  FunBoxTestApp
//
//  Created by Konstantin on 05/05/2019.
//  Copyright © 2019 Konstantin Meleshko. All rights reserved.
//

import UIKit

class BackEndViewController: UIViewController {
    
    //var backEndView = BackEndView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = #colorLiteral(red: 0.1921568662, green: 0.007843137719, blue: 0.09019608051, alpha: 1)
    }
    
    override func loadView() {
        super.loadView()
    }
    
    func addBackObject() {
        let backEndView = BackEndView(frame: view.frame)
        self.view.addSubview(backEndView)
    }
}
