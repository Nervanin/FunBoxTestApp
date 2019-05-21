//
//  ConfigureCell.swift
//  FunBoxTestApp
//
//  Created by Konstantin on 21/05/2019.
//  Copyright © 2019 Konstantin Meleshko. All rights reserved.
//

import UIKit
import SnapKit

protocol ConfigureCell {
    var textField: UITextField { get set }
    
    func setUpTextField(contentView: UIView, textField: UITextField)
}

extension ConfigureCell {
    
    func setUpTextField(contentView: UIView, textField: UITextField) {
        
        contentView.addSubview(textField)
        
        textField.snp.makeConstraints { (make) in
            textField.layer.borderWidth = 0.5
            make.top.equalTo(contentView).offset(8)
            make.bottom.equalTo(contentView).offset(-8)
            make.left.equalTo(contentView).offset(16)
            make.right.equalTo(contentView).offset(-16)
        }
    }
}

