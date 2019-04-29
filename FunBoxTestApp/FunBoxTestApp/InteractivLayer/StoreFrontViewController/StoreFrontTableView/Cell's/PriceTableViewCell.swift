//
//  PriceTableViewCell.swift
//  FunBoxTestApp
//
//  Created by Konstantin on 29/04/2019.
//  Copyright © 2019 Konstantin Meleshko. All rights reserved.
//

import UIKit
import SnapKit

class PriceTableViewCell: UITableViewCell {
    
    var priceLabel = UILabel()
    var priceCountLabel = UILabel()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        setUpView()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setUpView() {
        contentView.addSubview(priceLabel)
        contentView.addSubview(priceCountLabel)
        
        priceLabel.snp.makeConstraints { (make) in
            make.top.left.equalTo(contentView).offset(8)
        }
    }
    
}
