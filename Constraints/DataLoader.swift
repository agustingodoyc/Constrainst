//
//  DataLoader.swift
//  Constraints
//
//  Created by Agustin Godoy Cosser on 16/08/2022.
//

import Foundation

public class DataLoader {
    
   func loadMessages(_ file: String) -> [MessageData] {
        
        if let fileLocation = Bundle.main.url(forResource: file, withExtension: "json") {
            
            // do catch in case of an error
            do {
                let data = try Data(contentsOf: fileLocation)
                let jsonDecoder = JSONDecoder()
                let dataFromJson = try jsonDecoder.decode([MessageData].self, from: data)
                
                return dataFromJson
            } catch {
                print(error)
                return []
            }
        } else {
        return []
        }
    }
}
