//
//  BackEndViewController.swift
//  FunBoxTestApp
//
//  Created by Konstantin on 05/05/2019.
//  Copyright © 2019 Konstantin Meleshko. All rights reserved.
//

import UIKit

class BackEndViewController: UIViewController {
    
    lazy var storeFrontViewController = StoreFrontViewController()
    override func viewDidLoad() {
        super.viewDidLoad()
        addBackObject()
        view.backgroundColor = #colorLiteral(red: 0.1921568662, green: 0.007843137719, blue: 0.09019608051, alpha: 1)
    }
    
    override func loadView() {
        super.loadView()
    }
    
    func addBackObject() {
        let backEndView = BackEndView(frame: view.frame)
        backEndView.delegate = self
        self.view.addSubview(backEndView)
    }
}

extension BackEndViewController: ButtonDelegate {
    func buttonDidPressed(button: UIButton) {
       dismiss(animated: true, completion: nil)
    }
}
