//
//  AddNewDeviceViewController.swift
//  FunBoxTestApp
//
//  Created by Konstantin on 12/05/2019.
//  Copyright © 2019 Konstantin Meleshko. All rights reserved.
//

import UIKit

class AddNewDeviceViewController: UIViewController {
    
    var addNewDeviceView = AddNewDeviceView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        
        setButtonsToNavigationBar()
        setUpView()
    }
    
    func setUpView() {
        
        addNewDeviceView = AddNewDeviceView(frame: view.frame)
        self.view.addSubview(addNewDeviceView)
        
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
        
        let indexModelName = IndexPath(row: 1, section: 0)
        let cellModelName = addNewDeviceView.tableView.cellForRow(at: indexModelName) as! InputModelNameTableViewCell
        let modelName = cellModelName.textField.text
        
        let indexPrice = IndexPath(row: 3, section: 0)
        let cellPrice = addNewDeviceView.tableView.cellForRow(at: indexPrice) as! InputPriceTableViewCell
        let price = cellPrice.textField.text
        
        let indexCount = IndexPath(row: 5, section: 0)
        let cellCount = addNewDeviceView.tableView.cellForRow(at: indexCount) as! InputCountTableViewCell
        let count = cellCount.textField.text
        
        RecordDataToSource.shared.addObjectToModel(model: modelName ?? "", price: price ?? "", count: count ?? "")
    }
    
}
