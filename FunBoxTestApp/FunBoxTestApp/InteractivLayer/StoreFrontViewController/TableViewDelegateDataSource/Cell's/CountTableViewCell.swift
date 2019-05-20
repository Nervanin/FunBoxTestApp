//
//  CountTableViewCell.swift
//  FunBoxTestApp
//
//  Created by Konstantin on 29/04/2019.
//  Copyright © 2019 Konstantin Meleshko. All rights reserved.
//

import UIKit
import SnapKit

class CountTableViewCell: UITableViewCell {
    
    var countLabel = UILabel()
    var count = UILabel()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        setUpView()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setUpView() {
        contentView.addSubview(countLabel)
        contentView.addSubview(count)
        
        countLabel.snp.makeConstraints { (make) in
            make.left.equalTo(contentView).offset(8)
            make.top.equalTo(contentView).offset(40)
            make.bottom.equalTo(contentView).offset(-40)
        }
        
        count.snp.makeConstraints { (make) in
            make.top.equalTo(contentView).offset(40)
            make.bottom.equalTo(contentView).offset(-40)
            make.right.equalTo(contentView).offset(-8)
        }
    }
    
}
