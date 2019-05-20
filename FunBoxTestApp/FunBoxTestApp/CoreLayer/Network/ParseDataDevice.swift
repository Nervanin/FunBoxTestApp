//
//  ParseDataDevice.swift
//  FunBoxTestApp
//
//  Created by Konstantin on 29/04/2019.
//  Copyright © 2019 Konstantin Meleshko. All rights reserved.
//

import Foundation

class ParseDataSource {
    
    static let shared: ParseDataSource = ParseDataSource()
    
    func parseDevice(completionHandler: @escaping (_ deviceObject: Device) -> Void) {
        guard let path = Bundle.main.path(forResource: "Devices", ofType: "json") else {
            return
        }
        let url = URL(fileURLWithPath: path)
        let request = URLRequest(url: url)
        let task = URLSession.shared.dataTask(with: request) { (data, response, error) in
            if let data = data {
                do {
                    guard (try? JSONSerialization.jsonObject(with: data, options: .mutableContainers) as? [String: Any]) != nil else {
                        return
                    }
                    let decoder = JSONDecoder()
                    let device: Device = try decoder.decode(Device.self, from: data)
                    completionHandler(device)
                } catch {
                    print(error)
                }
            }
        }
        task.resume()
    }
}


