//
//  InputCountTableViewCell.swift
//  FunBoxTestApp
//
//  Created by Konstantin on 21/05/2019.
//  Copyright © 2019 Konstantin Meleshko. All rights reserved.
//

import UIKit

class InputCountTableViewCell: UITableViewCell, ConfigureCell {
    
    var textField: UITextField?
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        
        textField = UITextField()
        
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        setUpTextField(contentView: contentView, textField: textField ?? UITextField())
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
