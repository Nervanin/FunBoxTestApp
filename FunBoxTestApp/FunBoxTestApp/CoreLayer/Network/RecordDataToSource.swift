//
//  RecordDataToSource.swift
//  FunBoxTestApp
//
//  Created by Konstantin on 21/05/2019.
//  Copyright © 2019 Konstantin Meleshko. All rights reserved.
//

import Foundation

class RecordDataToSource {
    
    static let shared = RecordDataToSource()
    
    func addObjectToModel(model: String, price: String, count: String) {
        
        let model = DeviceDetailsModel(model: model, price: price, number: count)
     
        let enconder = JSONEncoder()
        enconder.outputFormatting = .prettyPrinted
        let dataToJson = try? enconder.encode(model)
        let string1 = String(data: dataToJson!, encoding: String.Encoding.utf8) ?? "Data could not be printed"
        print(string1)
       // print(dataToJson)
        
    }
}

