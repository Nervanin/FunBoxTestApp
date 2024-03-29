//
//  DeviceModel.swift
//  FunBoxTestApp
//
//  Created by Konstantin on 29/04/2019.
//  Copyright © 2019 Konstantin Meleshko. All rights reserved.
//

import Foundation

protocol DeviceDetailsModelProtocol {
    var model: String { get set }
    var price: String { get set }
    var number: String { get set }
}

struct Device: Codable {
    var device: [DeviceDetailsModel]?
    init() {
        
    }
}

struct DeviceDetailsModel: DeviceDetailsModelProtocol, Codable {
    var model: String
    var price: String
    var number: String
    
    init(model: String, price: String, number: String) {
        self.model = model
        self.price = price
        self.number = number
    }
    
    
}
