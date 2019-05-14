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
    lazy var addNewDeviceViewController = AddNewDeviceViewController()
    var dataSource = ParseDataSource()
    var backEndView = BackEndView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        addBackObject()
        setButtonsToNavigationBar()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)

    }
 
    func addBackObject() {
        backEndView = BackEndView(frame: view.frame)
        backEndView.delegate = self
        self.view.addSubview(backEndView)
    }
    
    @objc func addButtonDidPressed() {
        navigationController?.pushViewController(addNewDeviceViewController, animated: true)
    }
    
    func setButtonsToNavigationBar() {
        //navigationButtonsInit
        let backButton = UIBarButtonItem(title: "", style: .plain, target: nil, action: nil)
        let addDeviceButton = UIBarButtonItem(title: "add", style: .plain, target: self, action: #selector(addButtonDidPressed))
        //setNavigationButtons
        navigationItem.leftBarButtonItem = backButton
        navigationItem.rightBarButtonItem = addDeviceButton
    }
    
}


extension BackEndViewController: ButtonDelegate {
    func buttonDidPressed(button: UIButton) {
        self.navigationController?.popViewController(animated: true)
    }
}
