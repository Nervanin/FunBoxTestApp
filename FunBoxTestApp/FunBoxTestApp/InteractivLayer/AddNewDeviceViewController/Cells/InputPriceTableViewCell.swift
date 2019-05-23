//
//  InputPriceTableViewCell.swift
//  FunBoxTestApp
//
//  Created by Konstantin on 21/05/2019.
//  Copyright © 2019 Konstantin Meleshko. All rights reserved.
//

import UIKit

class InputPriceTableViewCell: UITableViewCell, ConfigureCell {
    
    var textField: UITextField
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        
        textField = UITextField()
        
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        setUpTextField(contentView: contentView, textField: textField)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
