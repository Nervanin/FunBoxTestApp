//
//  StoreFrontView.swift
//  FunBoxTestApp
//
//  Created by Konstantin on 25/04/2019.
//  Copyright © 2019 Konstantin Meleshko. All rights reserved.
//

import UIKit
import SnapKit

class StoreFrontView: UIView {
    
    var tableView = UITableView()
    var tableViewDataSourcee = StoreFrontTableViewDataSource()
    var tableViewDelegate = StoreFrontTableViewDelegate()
    //buttons
    var saveButton = UIButton()
    var storeFrontButton = UIButton()
    var backEndButton = UIButton()
    //delegate's
    var delegate: ButtonDelegate!
    //GestureRecognizer
    lazy var swipeRigth = UISwipeGestureRecognizer()
    lazy var swipeLeft = UISwipeGestureRecognizer()
    //counter for swipe table in StoreFrontView
    var counter = 0
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = #colorLiteral(red: 0.9999960065, green: 1, blue: 1, alpha: 1)
        setUpTableView(frame: frame)
        setUpButtons()
        setGestureRecognizer()
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setUpTableView(frame: CGRect) {
        //setUp TableView
        tableView = UITableView(frame: CGRect(x: 0, y: 0, width: frame.width, height: frame.height / 1.5), style: .plain)
        
        tableView.dataSource = tableViewDataSourcee
        tableView.delegate = tableViewDelegate
        self.addSubview(tableView)
        
        tableView.register(ModelLabelTableViewCell.self, forCellReuseIdentifier: tableViewDataSourcee.modellabelTableCellId)
        tableView.register(PriceTableViewCell.self, forCellReuseIdentifier: tableViewDataSourcee.priceLabelTableCellId)
        tableView.register(CountTableViewCell.self, forCellReuseIdentifier: tableViewDataSourcee.countLabelTableCellId)
    }
    
    //GESTURE RECOGNZER function logic
    @objc func respondToSwipeGesture(gesture: UIGestureRecognizer) {
        if let swipeGesture = gesture as? UISwipeGestureRecognizer {
            switch swipeGesture.direction {
            case UISwipeGestureRecognizer.Direction.left:
                counter += 1
                tableViewDataSourcee.counter = counter
                tableView.reloadData()
                //animated logic
                let transition = CATransition()
                transition.duration = 0.5
                transition.type = CATransitionType.push
                transition.subtype = CATransitionSubtype.fromRight
                transition.timingFunction = CAMediaTimingFunction(name:CAMediaTimingFunctionName.easeInEaseOut)
                self.window!.layer.add(transition, forKey: kCATransition)
            case UISwipeGestureRecognizer.Direction.right:
                if counter > 0 {
                    counter -= 1
                    tableViewDataSourcee.counter = counter
                    tableView.reloadData()
                    //animated logic
                    let transition = CATransition()
                    transition.duration = 0.5
                    transition.type = CATransitionType.push
                    transition.subtype = CATransitionSubtype.fromLeft
                    transition.timingFunction = CAMediaTimingFunction(name:CAMediaTimingFunctionName.easeInEaseOut)
                    self.window!.layer.add(transition, forKey: kCATransition)
                } else {
                    print("flag = 0")
                }
            default:
                break
            }
        }
    }
    
    
    func setGestureRecognizer() {
        swipeRigth.addTarget(self, action: #selector(respondToSwipeGesture(gesture:)))
        swipeLeft.addTarget(self, action: #selector(respondToSwipeGesture(gesture:)))
        
        swipeLeft.direction = .left
        swipeRigth.direction = .right
        
        self.addGestureRecognizer(swipeRigth)
        self.addGestureRecognizer(swipeLeft)
    }
    
    // SETUP Buttons on the view
    func setUpButtons() {
        //set saveButton
        self.addSubview(saveButton)
        saveButton.backgroundColor = #colorLiteral(red: 0.6000000238, green: 0.6000000238, blue: 0.6000000238, alpha: 1)
        saveButton.layer.borderWidth = 3
        saveButton.layer.borderColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        saveButton.layer.cornerRadius = 5
        saveButton.setTitle("Купить", for: .normal)
        
        //set storeFrontButton
        self.addSubview(storeFrontButton)
        storeFrontButton.backgroundColor = #colorLiteral(red: 0.6000000238, green: 0.6000000238, blue: 0.6000000238, alpha: 1)
        storeFrontButton.layer.borderColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        storeFrontButton.layer.borderWidth = 3
        storeFrontButton.setTitle("Store-Front", for: .normal)
        
        //set backEndButton
        self.addSubview(backEndButton)
        backEndButton.backgroundColor = #colorLiteral(red: 0.6000000238, green: 0.6000000238, blue: 0.6000000238, alpha: 1)
        backEndButton.layer.borderColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        backEndButton.layer.borderWidth = 3
        backEndButton.setTitle("Back-End", for: .normal)
        
        setConstraints()
        
        backEndButton.addTarget(self, action: #selector(buttonPress), for: .touchUpInside)
    }
    
    @objc func buttonPress(button: UIButton) {
        delegate.buttonDidPressed(button: backEndButton)
    }
    
    func setConstraints() {
        saveButton.snp.makeConstraints { (make) in
            make.centerX.equalToSuperview()
            make.top.equalTo(tableView.snp.bottom).offset(50)
            make.height.equalTo(45)
            make.width.equalTo(250)
        }
        
        storeFrontButton.snp.makeConstraints { (make) in
            make.left.equalTo(0)
            make.bottom.equalTo(0)
            make.width.equalTo(self.frame.width / 2)
            make.height.equalTo(self.frame.height * 0.1)
        }
        
        backEndButton.snp.makeConstraints { (make) in
            make.left.equalTo(storeFrontButton.snp.right)
            make.bottom.equalTo(0)
            make.width.equalTo(self.frame.width / 2)
            make.height.equalTo(self.frame.height * 0.1)
        }
    }
    
}

