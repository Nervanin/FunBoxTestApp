//
//  ParseDataDevice.swift
//  FunBoxTestApp
//
//  Created by Konstantin on 29/04/2019.
//  Copyright © 2019 Konstantin Meleshko. All rights reserved.
//

import Foundation

class ParseDataSource {
    
    func parseDevice() {
        guard let path = Bundle.main.path(forResource: "Devices", ofType: "json") else {
            return
        }
        //            let url = URL(string: path) else {
        //                return
        //        }
        
        let url = URL(fileURLWithPath: path)
        
        //let data = try? Data(contentsOf: url),
        
        let request = URLRequest(url: url)
        let task = URLSession.shared.dataTask(with: request) { (data, response, error) in
            if let data = data {
                do {
                    guard let json = try? JSONSerialization.jsonObject(with: data, options: .mutableContainers) as? [String: Any] else {
                        return
                    }
                    //                    guard let json = try JSONSerialization.jsonObject(with: data, options: []) as? [String: Any] else {
                    //                        return
                    //                    }
                    
                    // work with JSON
                    let decoder = JSONDecoder()
                    let device: Device = try decoder.decode(Device.self, from: data)
                    print(device)
                } catch {
                    print(error)
                }
            }
        }
        task.resume()
    }
}


