//
//  BackEndTableViewCell.swift
//  FunBoxTestApp
//
//  Created by Konstantin on 11/05/2019.
//  Copyright © 2019 Konstantin Meleshko. All rights reserved.
//

import UIKit
import SnapKit

class BackEndTableViewCell: UITableViewCell {
    
    var modelLabel = UILabel()
    var countLabel = UILabel()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        setUpLabel()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setUpLabel() {
        
        contentView.addSubview(modelLabel)
        contentView.addSubview(countLabel)
        
        modelLabel.snp.makeConstraints({ (make) in
            make.top.left.equalTo(contentView).offset(8)
            make.left.equalTo(contentView).offset(8)
        })
        countLabel.snp.makeConstraints { (make) in
            make.top.equalTo(contentView).offset(8)
            make.right.equalTo(contentView).offset(-12)
        }
        
        modelLabel.numberOfLines = 0
    }
    
}
