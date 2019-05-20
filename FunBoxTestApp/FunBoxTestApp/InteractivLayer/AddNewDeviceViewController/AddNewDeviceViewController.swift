//
//  AddNewDeviceViewController.swift
//  FunBoxTestApp
//
//  Created by Konstantin on 12/05/2019.
//  Copyright © 2019 Konstantin Meleshko. All rights reserved.
//

import UIKit

class AddNewDeviceViewController: UIViewController {
    
    var addNerDeviceView = AddNewDeviceView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        
        setButtonsToNavigationBar()
        setUpView()
    }
    
    func setUpView() {
        
        addNerDeviceView = AddNewDeviceView(frame: view.frame)
        self.view.addSubview(addNerDeviceView)
        
    }    
    
    func setButtonsToNavigationBar() {
        //UiBarButton's
        let cancelBarButton = UIBarButtonItem(title: "Отмена", style: .plain, target: self, action: #selector(cancelBarButtonDidTapped))
        let saveBarButton = UIBarButtonItem(title: "Сохранить", style: .plain, target: self, action: #selector(saveBarButtonDidTapped))
        
        navigationItem.leftBarButtonItem = cancelBarButton
        navigationItem.rightBarButtonItem = saveBarButton
    }
    
    @objc func cancelBarButtonDidTapped() {
        navigationController?.popViewController(animated: true)
    }
    
    @objc func saveBarButtonDidTapped() {
        
    }
    
}