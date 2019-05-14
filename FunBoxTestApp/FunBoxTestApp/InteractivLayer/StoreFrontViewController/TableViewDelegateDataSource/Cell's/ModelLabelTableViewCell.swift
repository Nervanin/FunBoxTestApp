//
//  StoreFrontTableViewCell.swift
//  FunBoxTestApp
//
//  Created by Konstantin on 25/04/2019.
//  Copyright © 2019 Konstantin Meleshko. All rights reserved.
//

import UIKit
import SnapKit

class ModelLabelTableViewCell: UITableViewCell {
    
    var modelLabel = UILabel()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        setUpLabel()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setUpLabel() {
        contentView.addSubview(modelLabel)
        modelLabel.snp.makeConstraints({ (make) in
            make.top.left.equalTo(contentView).offset(40)
            make.bottom.equalTo(contentView).offset(-40)
            make.left.equalTo(contentView).offset(8)
            
        })
    }
}
