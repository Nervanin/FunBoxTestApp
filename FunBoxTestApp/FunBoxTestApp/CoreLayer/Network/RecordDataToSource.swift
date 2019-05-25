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
        print("hello World \(model)")
        
        //Encoding Device to Data
        let enconder = JSONEncoder()
        enconder.outputFormatting = .prettyPrinted
        let dataToJson = try? enconder.encode(model)
        let deviceData = String(data: dataToJson!, encoding: String.Encoding.utf8) ?? "Data could not be printed"
        print(deviceData)
        
        let fileName = "Devices"
        let documetDirUrl = try! FileManager.default.url(for: .documentDirectory, in: .userDomainMask, appropriateFor: nil, create: false)
        let fileUrl = documetDirUrl.appendingPathComponent(fileName).appendingPathExtension("json")
        
        print("FilePath \(fileUrl.path)")
        
        do {
            try? deviceData.write(to: fileUrl, atomically: true, encoding: String.Encoding.utf8)
        }
    }
}


